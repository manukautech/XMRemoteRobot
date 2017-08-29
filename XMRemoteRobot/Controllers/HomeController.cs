/*
      Project XMRemoteRobot - Server-Side processing is in this file
      Copyright © 2017 John Calder as project leader
      Licensed under the "Open Source" Apache License, Version 2.0. 
      See file "LICENSE" in the project root for license information.
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
//20170712 JPC needed System.Data.SqlClient downloaded via NuGet
using System.Data.SqlClient;


namespace XMRemoteRobot.Controllers
{
    public class HomeController : Controller
    {
        //20160813 JPC HOWTO read connectionString in a controller
        private string _connectionString;
        private string _appAccessKey;

        public HomeController(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
            _appAccessKey = configuration.GetSection("AppSettings")["appAccessKey"];
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Contact and About";

            return View("Contact");
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Contact and About";

            return View();
        }

        public IActionResult Test01()
        {
            return View();
        }

        public IActionResult Test02()
        {
            return View();
        }

        //20170723 JPC this method XTest01() is ONLY for demos and casual testing with wider audiences.
        // The "real" master communication method is XSignal() further below
        // Idea is that casual users and public demos have this alternative path 
        // with potential for adding code to cover that use case.
        // Also very casual users do not get to see on screen that the "real" method is XSignal
        [HttpPost]
        public string XTest01(int MessageId, int CategoryId
        , int CommanderId, int RobotId, string XData, bool IsLog
        , string AccessKey)
        {
            return XSignal(MessageId, CategoryId, CommanderId, RobotId, XData, IsLog, AccessKey);
        }

        public IActionResult Error()
        {
            return View();
        }

        [HttpPost]
        public string XSignal(int MessageId, int CategoryId 
        ,int CommanderId, int RobotId, string XData, bool IsLog
        ,string AccessKey)
        {
            Response.ContentType = "text/plain";
            //default general error message
            string response = "{\"status\": 20, \"errormessage\": \"process incomplete\"}";

            if (AccessKey != _appAccessKey)
            {
                return "{\"status\": 21, \"errormessage\": \"access not available - contact app owner to check your registration and user status\"}";
            }

            //20170712 JPC an additional injection line of defence, taking advantage of the way 
            //  our data is a protocol without coding characters like single quote mark or semicolon.
            //Note also the use of "parametrised" SQL below
            if(XData.IndexOf("'") > -1 || XData.IndexOf(";") > -1)
            {
                return "{\"status\":22, \"errormessage\": \"protocol syntax or format error\"}";
            }

            switch (CategoryId)
            {
                case 1:
                    //Commander sending latest orders to Robot
                    response = XCommand(CategoryId, CommanderId, RobotId, XData, IsLog);
                    break;
                case 2:
                    //Robot polls to collect latest orders
                    response = XCollect(MessageId, CategoryId, CommanderId, RobotId, XData, IsLog);
                    break;
                default:
                    return "{\"status\":23, \"errormessage\": \"this message has an unrecognised categoryid - we currently only support values of 1 for command-send - 2 for command-collect - and we are working on 3 for telemetry \" }";
            }  

            return response;
        }

        private string XCommand(int CategoryId, int CommanderId, int RobotId, string Command, bool IsLog)
        { 
            SqlConnection conn = new SqlConnection(_connectionString);
            SqlCommand cmd = new SqlCommand();

            //Support UK, NZ, AU English for "initialise" vs "initialize"
            if(Command.IndexOf("initialise") > -1)
            {
                Command.Replace("initialise", "initialize");
            }

            cmd = conn.CreateCommand();
            cmd.Connection.Open();
            string SQL = "INSERT INTO [Message]"
            + "(CategoryId, CommanderId, RobotId, Command, Response, IsLog, XTimeCommand) "
            + "VALUES(@p0, @p1, @p2, @p3, @p4, @p5, @p6);SELECT SCOPE_IDENTITY()";

            cmd.CommandText = SQL;
            cmd.Parameters.AddWithValue("@p0", CategoryId);
            cmd.Parameters.AddWithValue("@p1", CommanderId);
            cmd.Parameters.AddWithValue("@p2", RobotId);
            cmd.Parameters.AddWithValue("@p3", Command);
            cmd.Parameters.AddWithValue("@p4", "");
            //TODO fix boolean bit in DB design?
            cmd.Parameters.AddWithValue("@p5", Convert.ToInt32(IsLog));
            cmd.Parameters.AddWithValue("@p6", DateTime.Now);

            int messageId = Convert.ToInt32(cmd.ExecuteScalar());

            //Cleanup at every 30th connection
            string cleanupMessage = "";
            double xId = Convert.ToDouble(messageId);
            if(Math.Round(xId/30) == xId/30)
            {
                //20170806 JPC Prototype over-simplified cleanup. 
                // TODO investigate why parametrization here is crashing
                int cutoffId = messageId - 300;
                SQL = "INSERT INTO MessageLog SELECT * FROM Message WHERE MessageId < " + cutoffId + " "
                     + "AND IsLog = 1 AND CommanderId = " + CommanderId + " AND RobotId = " + RobotId + "; "
                     + "DELETE FROM Message WHERE MessageId < " + cutoffId + " "
                     + "AND CommanderId = " + CommanderId + " AND RobotId = " + RobotId;
                cmd.CommandText = SQL;
                int rowsAffected = cmd.ExecuteNonQuery();

                cleanupMessage = ", \"cutoffId\": " + cutoffId + ", \"rowsaffected\": " + rowsAffected;
                
                //Attempted better cleanup but not working and no error message on crash
                //except one saying something like @p0 already in use 
                //hence the trial with higher p numbers.
                /*
                SQL = "SELECT COUNT(*) FROM Message " 
                + "WHERE CommanderId = @p7 AND RobotId = @p8";
                cmd.CommandText = SQL;
                cmd.Parameters.AddWithValue("@p7", CommanderId);
                cmd.Parameters.AddWithValue("@p8", RobotId);
                int messageCount = Convert.ToInt32(cmd.ExecuteScalar());
                if(messageCount > 6)
                {
                    //Start of table cleanup of usually temporary messages, keep top 60
                    SQL = "SELECT TOP 1 MessageId FROM Message "
                        + "WHERE MessageId NOT IN SELECT TOP 6 MessageId FROM Message "
                        + "WHERE CommanderId = @p9 AND RobotId = @p10";
                    cmd.CommandText = SQL;
                    cmd.Parameters.AddWithValue("@p9", CommanderId);
                    cmd.Parameters.AddWithValue("@p10", RobotId);
                    int cutoffId = Convert.ToInt32(cmd.ExecuteScalar());

                    SQL = "INSERT INTO MessageLog SELECT * FROM Message WHERE MessageId < @p0 "
                        + "AND IsLog = 1 AND CommanderId = @p11 AND RobotId = @p12; "
                        + "DELETE FROM Message WHERE MessageId < @p13 "
                        + "AND CommanderId = @p14 AND RobotId = @p15;";
                    cmd.CommandText = SQL;
                    cmd.Parameters.AddWithValue("@p11", CommanderId);
                    cmd.Parameters.AddWithValue("@p12", RobotId);
                    cmd.Parameters.AddWithValue("@p13", cutoffId);
                    cmd.Parameters.AddWithValue("@p14", CommanderId);
                    cmd.Parameters.AddWithValue("@p15", RobotId);
                    cmd.ExecuteNonQuery();
                    cleanupMessage = ", \"cutoffId\": " + cutoffId;
                    */
                //end of table cleanup of usually temporary messages
            // }
            }

            string response = "{\"status\": 1, \"messageid\": " + messageId + cleanupMessage + "}";

            cmd.Connection.Close();

            return response;
        }

        private string XCollect(int MessageId, int CategoryId, int CommanderId, int RobotId, string XResponse, bool IsLog)
        {
            string response = "";
            string SQL = "";


            int i;
            int dbMessageId;
            int iStop = 16; //"long" poll is 4 sec of sleep plus data access operations
            bool exitTrigger = false;
            bool delayTrigger = false;

            for (i = 0; i <= iStop; i++)
            {
                //note the time
                //EDUC note use of ff in format for decimal fractions of a second
                //source: https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings
                string HHmmss = DateTime.Now.ToString("HH:mm:ss.ff");

                delayTrigger = false;
                SqlConnection conn = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand();
                cmd = conn.CreateCommand();
                cmd.Connection.Open();

                SQL = "SELECT TOP 1 * FROM Message "
                + "WHERE CommanderId = @p0 AND RobotId = @p1 "
                + "ORDER BY MessageId DESC";
                cmd.CommandText = SQL;
                cmd.Parameters.AddWithValue("@p0", CommanderId);
                cmd.Parameters.AddWithValue("@p1", RobotId);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        reader.Read();
                        {
                            dbMessageId = reader.GetInt32(0);
                            if(dbMessageId > MessageId )
                            {
                                //New message received, respond immediately

                                //Construct JSON string
                                //20170716 JPC conventional string interpolation code is not working and TODO work out why
                                // (see commented-out below) so back to basics with assembling this string.
                                response =
                                "{ \"messageid\":" + reader.GetInt32(0) + ",\"categoryid\":" + reader.GetInt32(1)
                                 + ",\"commanderid\":" + reader.GetInt32(2) + ",\"robotid\":" + reader.GetInt32(3)
                                 + ",\"command\":" + reader.GetString(4) + ",\"response\":{\"status\":-1, \"time\": \"" + HHmmss + "\"}}";
                                //exit for loop
                                exitTrigger = true;
                            } 
                            else if(i < iStop)
                            {
                                delayTrigger = true;
                            }
                            else
                            {
                                response = "{ \"response\":{\"status\":5, \"message\": \"long polling slow-down while waiting for new command\", \"time\": \"" + HHmmss + "\"}}";
                                exitTrigger = true;
                            }
                        }
                    }
                    else
                    {
                        //exit for loop
                        response = "{\"status\":24, \"errormessage\": \"cannot find any commands for this robot - check with the human operator that he/she is active - check config and connections of command device and software\"}";
                        //need to get out of "using" before triggering "break"
                        exitTrigger = true;
                    }
                }
                cmd.Connection.Close();
                if(exitTrigger) { break; }

                if(delayTrigger)
                {
                    //20170804 JPC EDUC discovered that for this to work it is essential
                    //that we place it outside of the block of code doing ADO.NET data access
                    System.Threading.Thread.Sleep(250);
                }
            }  

            return response;
        }
    }
}

/*
      Project XMRemoteRobot - Welcome, info and test page designs are served from here.
      v2.0 - change to SignalR - communications hub is now "RobotHub.cs"
      Copyright © 2017 John Calder as project leader
      Licensed under the "Open Source" Apache License, Version 2.0. 
      See file "LICENSE" in the project root for license information.
*/

using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Hosting.Server;
using Microsoft.AspNetCore.Hosting;


namespace XMRemoteRobot.Controllers
{
	public class HomeController : Controller
	{

		private IHostingEnvironment _env;

		//20160813 JPC HOWTO read connectionString in a controller
        //20180818 JPC With move to WebSockets+SignalR we have dropped the database
        // We may bring it back later so comment-out _connectionString for now
		//private string _connectionString;
		private string _appAccessKey;

		public HomeController(IConfiguration configuration, IHostingEnvironment env)
		{
			//_connectionString = configuration.GetConnectionString("DefaultConnection");
			_appAccessKey = configuration.GetSection("AppSettings")["appAccessKey"];
			_env = env;
		}

		public IActionResult Index()
		{
			ViewData["Message"] = "";
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

		public IActionResult Error()
		{
			return View();
		}
	}
}
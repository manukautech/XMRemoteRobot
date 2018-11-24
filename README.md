# XMRemoteRobot Version 2.1
A web service app which enables remote-control of near and distant devices via SignalR - a WebSockets framework.

Live Demo - test drive this app at:  
[https://xmrrae.azurewebsites.net](https://xmrrae.azurewebsites.net) - Server located in Azure "Australia East"  
[https://xmrrwu.azurewebsites.net](https://xmrrwu.azurewebsites.net) - Server located in Azure "West US"   
You can see the latency effect at different distances.  
For pages "Test01" and "Test02", commands travel from the left side of the page, to the server, then back to the robot code separated into an iframe on the right side of the page. Or to your smartphone-acting-as-robot when you navigate that to pages "Robot01" or "Robot02". Therefore multiply the distance to the server x 2 for the remote control distance.

From version 2.0 we have moved from HTTP to Websockets-SignalR. This is delivering a big improvement in latency - as in delay in remote control and monitoring. Example latency results are 10ms on local area networks, and 70ms over a distance of 4000km. With version 02 we route between commanders and robots with an in-memory "dictionary" object. We have removed the database in this version. That also removes logging and some potential future elements. Not having a database does however make setup and hosting easier. XMRemoteRobot hosts well on the free and low cost Azure shared hosting websites.

Run this on a Windows machine with Visual Studio 2017 installed. We use the "Community Edition" which is free of charge for education, individuals and small businesses. Also download Core 2.1 SDK from:
[https://www.microsoft.com/net/download/core](https://www.microsoft.com/net/download/core)

Edit "appSettings.json" to change the "appAccessKey" from the demo to something secure. You can run test pages on a local machine. You need to deploy on the full webserver "IIS" rather than the test webserver "IISExpress" to run devices as robot clients, or to operate robots.

Remote Control with signal messaging is a much discussed area and software does exist. XMRemoteRobot is focussed on being small and efficient for our particular robot remote control and telemetry needs - which may be your needs. The code is written to be clearly understandable so it can double as an education resource for the new ASP.NET Core and SignalR technologies. 

More details in this document: https://github.com/manukautech/XMRemoteRobot/blob/master/Docu_XMRemoteRobot_v20180818.docx  

Example of a teaching resource spinoff: https://github.com/manukautech/XMRemoteRobot/blob/master/Lessons%20from%20Robots%20about%20JSON_v20180818.docx
 
Recent version changes:  
2.1   - Enable app clients by adding CORS permissions for them  
      - Update asp.net core runtime from 2.1.2 to 2.1.5  
2.0   - Extensive rewrite moving from HTTP to SignalR-Websockets. Replace database with an in-memory object. 

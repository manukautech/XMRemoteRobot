# XMRemoteRobot Version 2.2
A web service app which enables remote-control of near and distant devices via SignalR - a WebSockets framework.

Big step up for Version 2.2 of 24 Mar 2019 - live video, see what the robot sees, achieved by capturing images from the robot (or any test device) camera at about 6 frames per second, and sending them over the same SignalR signals as remote control. This means this one app does it all. Remote video done this way needs no additional installation or setup work.  
Event: Sunday 12 Jan 2020. Successful live video from a New Zealand Rocketry Association enthusiast rocket flight.  
[https://www.facebook.com/groups/nzrocketry/permalink/10162696440995696/](https://www.facebook.com/groups/nzrocketry/permalink/10162696440995696/)  
  
Live Demo - test drive this app at:   
[https://xmrrae.azurewebsites.net](https://xmrrae.azurewebsites.net) - Server located in Azure "Australia East"  
[https://xmrrwu.azurewebsites.net](https://xmrrwu.azurewebsites.net) - Server located in Azure "West US"   
You can see the latency effect at different distances.  
  
For pages "Test01" and "Test02", commands travel from the left side of the page, to the server, then back to the robot code separated into an iframe on the right side of the page. For a better test follow the instructions on the right and open a second copy of the website in a separate browser window or on a smartphone. Or open this website in 2 smartphones. The commander/robot pages are Test01/Robot01 and Test02/Robot02. The remote control distance is the distance to the server x 2.

For version 2.0 and above we have moved from HTTP to Websockets-SignalR. This is delivering a big improvement in latency, ie shorter time delays. Example latency results are 10ms on local area networks, and 70ms over a distance of 4000km. With version 02 we route between commanders and robots with an in-memory "dictionary" object. We have removed the database in this version. That also removes logging and some potential future elements. Not having a database does however make setup and hosting easier. XMRemoteRobot hosts well on the free and low cost Azure shared hosting websites.

Run XMRemoteRobot code on a Windows machine with Visual Studio 2019 or 2017 installed. We use the "Community Edition" which is free of charge for education, individuals and small businesses. Also download and install ".NET Core 2.2 SDK" from:
[https://www.microsoft.com/net/download/core](https://www.microsoft.com/net/download/core)  
If you are running the full IIS Webserver on your test machine, you will also need to download and install ".NET Core 2.2 Runtime".  

Edit "appSettings.json" to change the "appAccessKey" from the demo to something secure. You can run test pages on a local machine. You need to deploy on the full webserver "IIS" rather than the test webserver "IISExpress" to run devices as robot clients, or to operate robots.

Remote Control with signal messaging is a much discussed area and software does exist. XMRemoteRobot is focussed on being small and efficient for our particular robot remote control and telemetry needs - which may be your needs. The code is written to be clearly understandable so it can double as an education resource for the new ASP.NET Core and SignalR technologies. 

More details in this document: https://github.com/manukautech/XMRemoteRobot/blob/master/Docu_XMRemoteRobot_v20180818.docx  

Example of a teaching resource spinoff: https://github.com/manukautech/XMRemoteRobot/blob/master/Lessons%20from%20Robots%20about%20JSON_v20180818.docx  
  
Related publication:  
Afrin, S., Calder, J. (2018) *A Prototype Robot as an Example of Creative Repurposing of Accessible Technologies.* \[Conference paper presented at ITX/CITRENZ, Wellington, NZ \] Retrieved from:  
https://www.citrenz.ac.nz/conferences/2018/pdf/2018CITRENZ_1_Afrin_Robot.pdf

 
|Version|Changes| 
| ----- | ------------------------------------------------------------------------------------------------- |
|2.2   |Enable "remote vision" as in video by capturing and sending still images over SignalR at a nominal 6 frames per second. We want this one web app to do it all including simple remote vision with no additional installations or special setups needed.|                 
|      |Update asp.net core runtime from 2.1.5 to 2.2 |
|2.1   |Enable app clients by adding "CORS" permissions for them.|  
|      |Update asp.net core runtime from 2.1.2 to 2.1.5  |
2.0    |Extensive rewrite moving from HTTP to SignalR-Websockets. Replace database with an in-memory object. |

# XMRemoteRobot Version 2.0 - Note that this branch is currently loading files and therefore incomplete
A web service app which enables remote-control of near and distant devices via SignalR - a WebSockets framework - including over the public Internet.

Live Demo - test drive this app at:
[https://xmrrae.azurewebsites.net](https://xmrrae.azurewebsites.net)

Video:
[https://www.youtube.com/watch?v=aVQCipqSoCs](https://www.youtube.com/watch?v=aVQCipqSoCs)

This is version 02 moving from HTTP to Websockets-SignalR. This is delivering a big improvement in latency - as in less lag and delay in remote control. Example latency results are 2ms on local area networks, and 70ms over a distance of 4000km. With version 02 we route between commanders and robots with an in-memory "dictionary" object. We have removed the database in this version. That also removes logging and some potential future elements. No database does however make hosting a lot easier. XMRemoteRobot hosts well on the free and low cost Azure shared hosting websites.

Run this on a Windows machine with Visual Studio 2017 installed. We use the "Community Edition" which is free of charge for education, individuals and small businesses. Download Core 2.1 SDK from:
[https://www.microsoft.com/net/download/core](https://www.microsoft.com/net/download/core)

Edit "appSettings.json" to change the "appAccessKey" from the demo to something secure. You can run test pages on a local machine. You need to run as a website to demo devices as robot clients, or to operate robots for real.

Remote Control with signal messaging is a much discussed area and software does exist. XMRemoteRobot is focussed on being small and efficient for our particular robot remote control and telemetry needs - which may be your needs. The code is written to be clearly understandable so it can double as an education resource for the new ASP.NET Core and SignalR technologies. 

More details in this document: https://github.com/manukautech/XMRemoteRobot/blob/master/Docu_XMRemoteRobot_v20180818.docx  

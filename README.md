# XMRemoteRobot
A web service app which enables remote-control of near and distant devices via HTTP including over the public Internet.

Live Demo - run this code at:
[https://r2.manukautech.info](https://r2.manukautech.info)

Video:
[https://www.youtube.com/watch?v=aVQCipqSoCs](https://www.youtube.com/watch?v=aVQCipqSoCs)

This is a "long polling" app. "Commanders" and "Collectors" (robots, receivers) can rapidly poll this server for updated signal messages. We are getting signal message delivery times as fast as 0.2 sec. If Commanders are pausing or slow then the server delays "no new message" responses by 2 to 4 sec.

The technology is Microsoft ASP.NET Core 2.0 with a Microsoft SQL Server Express database. The coding languages are C#, JavaScript, HTML, CSS and SQL. The project leader John Calder and the team starting this are lecturers and students at the Manukau Institute of Technology. This app and its related projects are spinoffs from our research, teaching and learning activities. 

Run this on a Windows machine with Visual Studio 2017 installed. We use the "Community Edition" which is free of charge for education, individuals and small businesses. Download Core 2.0 SDK or Runtime from:
[https://www.microsoft.com/net/download/core](https://www.microsoft.com/net/download/core)

The code is setup to run the supplied database in folder "C:\Users\Public\LocalDB" which we find works quickly and easily on development machines owned by individuals. To run elsewhere, eg on a pen drive, on a webserver, you need to edit file "appSettings.json". While in "appSettings.json" you need to change the "appAccessKey" from the demo to something secure. You can run test pages on a local machine. You need to run as a website to demo devices as robot clients, or to operate robots for real.

Remote Control with signal messaging is a much discussed area and software does exist. XMRemoteControl is focussed on being small and efficient for our particular robot remote control and telemetry needs - which may be your needs. The code is written to be clearly understandable so it can double as an education resource for the new ASP.NET Core technology. XMRemoteControl stays with HTTP which keeps it firewall friendly and working well in an education institute environment where more exotic socket communications are often blocked. HTTP keeps XMRemoteControl in the zone of machine-reading of json-formatted text from machine-friendly web pages a.k.a. web services which we think of as web pages for robots to look at.

In starting XMRemoteControl I chose to make use of a database to store and manage signal messages in transit. Other apps go for in-memory management. In theory reading and writing to a database should carry a speed penalty but Microsoft SQL Server does extensive caching in memory so I thought we should try it. Early results indicate that when a signal message takes 0.20 seconds on its journey, 0.01 second of that is database read/write. That suggests a penalty of only 5 percent but it may be a little less than that because in-memory processing is not perfectly instant. The database advantages include: easier and clearer coding; ability to log conversations. Routing (sorting) signal messages is mostly done with SQL WHERE clauses eg getting a message intended for robot 1045 to its correct destination means running code like ".. WHERE RobotId = 1045".

See also "Docu_XMRemoteControl .. " document.


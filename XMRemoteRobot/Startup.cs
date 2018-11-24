using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System.IO;
using Microsoft.Extensions.FileProviders;
using Microsoft.AspNetCore.Http;

namespace XMRemoteRobot
{
	public class Startup
	{
		public Startup(IConfiguration configuration)
		{
			Configuration = configuration;
		}

		public IConfiguration Configuration { get; }

		// This method gets called by the runtime. Use this method to add services to the container.
		public void ConfigureServices(IServiceCollection services)
		{
			services.AddMvc();

            services.AddSignalR();

            //20181124 JPC Ver2.1 Enable CORS = Cross Origin Resource Sharing
            // https://docs.microsoft.com/en-us/aspnet/core/security/cors?view=aspnetcore-2.1
            services.AddCors();

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
		{

			if (env.IsDevelopment())
			{
				app.UseDeveloperExceptionPage();
				app.UseBrowserLink();
			}
			else
			{
				app.UseExceptionHandler("/Home/Error");
			}

			app.UseStaticFiles();

            //CORS - see above reference - need to allow any origin to make app clients possible
            //also: https://docs.microsoft.com/en-us/aspnet/core/signalr/security?view=aspnetcore-2.1
            app.UseCors(builder =>
            { 
                builder.AllowAnyOrigin()
                .AllowAnyHeader()
                .WithMethods("GET", "POST")
                .AllowCredentials();
            });

            app.UseMvc(routes =>
			{
				routes.MapRoute(
					name: "default",
					template: "{controller=Home}/{action=Index}/{id?}");
			});

            //SignalR
            app.UseSignalR(routes =>
            {
                routes.MapHub<RobotHub>("/robothub");
            });
        }
	}
}

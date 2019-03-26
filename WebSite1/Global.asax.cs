using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;

namespace WebAPIWithWebForm
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.MapHttpRoute(
                name: "MyAPI",
                routeTemplate: "api/{controller}/{id}",
                defaults: new
                {
                    id = System.Web.Http.RouteParameter.Optional
                }
            );
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace DTcms.Web
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //RegisterView();//(不使用area的时候用于区分前后台路由)
        }

        protected void RegisterView()
        {
            ViewEngines.Engines.Clear();
            ViewEngines.Engines.Add(new UI.ViewEngine.AdminViewEngine());
        }
    }
}

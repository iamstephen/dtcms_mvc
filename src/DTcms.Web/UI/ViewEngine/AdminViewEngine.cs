using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DTcms.Web.UI.ViewEngine
{
    public class AdminViewEngine: RazorViewEngine
    {
        public AdminViewEngine()
        {
            ViewLocationFormats = new[]
            {
                "~/Views/{1}/{0}.cshtml",
                "~/Views/Shared/{0}.cshtml",
                "~/Views/Admin/{1}/{0}.cshtml"//我们的规则
            };
        }
        public override ViewEngineResult FindView(ControllerContext controllerContext, string viewName, string masterName, bool useCache)
        {
            return base.FindView(controllerContext, viewName, masterName, useCache);
        }
    }
}
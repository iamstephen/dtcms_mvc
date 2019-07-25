using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTcms.BLL;
using System.Data;
using DTcms.Web.UI;

namespace DTcms.Web.Controllers
{
    public class HomeController : BasePage
    {

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Error(string msg)
        {
            ViewBag.msg = msg;
            return View();
        }
    }
    
}
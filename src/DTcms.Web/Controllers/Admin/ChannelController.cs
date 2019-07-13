using DTcms.Web.Filter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DTcms.Web.Controllers.Admin
{
    [AdminAuthorize]
    public class ChannelController : Controller
    {
        #region attribute_field_edit
        public ActionResult Attribute_field_edit()
        {
            return View();
        }
        #endregion

        #region attribute_field_list
        public ActionResult Attribute_field_list()
        {
            return View();
        }
        #endregion

        #region channel_edit
        public ActionResult Channel_edit()
        {
            return View();
        }
        #endregion

        #region channel_list
        public ActionResult Channel_list()
        {
            return View();
        }
        #endregion

        #region site_edit
        public ActionResult Site_edit()
        {
            return View();
        }
        #endregion

        #region site_list
        public ActionResult Site_list()
        {
            return View();
        }
        #endregion

        #region tags_edit
        public ActionResult Tags_edit()
        {
            return View();
        }
        #endregion

        #region tags_list
        public ActionResult Tags_list()
        {
            return View();
        }
        #endregion
    }
}
using DTcms.Common;
using DTcms.Model;
using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DTcms.Web.Controllers
{
    public class ContentController : BasePage
    {
        // GET: Content
        public ActionResult Index()
        {
            string channel = "content"; //频道名称
            site_channel site_Channel = new BasePage().get_channel_model(channel);
            int id;
            string page = string.Empty;
            article model = new article();
            id = DTRequest.GetQueryInt("id");
            page = DTRequest.GetQueryString("page");
            BLL.article bll = new BLL.article();

            if (id > 0) //如果ID获取到，将使用ID
            {
                if (!bll.ArticleExists(channel, id))
                {
                    return RedirectToAction("Error", "Home", new { msg = "出错啦，您要浏览的页面不存在或已删除！" });
                }
                model = bll.ArticleModel(channel, id);
            }
            else if (!string.IsNullOrEmpty(page)) //否则检查设置的别名
            {
                if (!bll.ArticleExists(channel, page))
                {
                    return RedirectToAction("Error", "Home", new { msg = "出错啦，您要浏览的页面不存在或已删除！" });
                }
                model = bll.ArticleModel(channel, page);
            }
            else
            {
                return RedirectToAction("Error", "Home", new { msg = "出错啦，您要浏览的页面不存在或已删除！" });
            }
            //跳转URL
            if (model.link_url != null)
            {
                model.link_url = model.link_url.Trim();
            }
            if (!string.IsNullOrEmpty(model.link_url))
            {
                Redirect(model.link_url);
            }
            ViewBag.site_Channel = site_Channel;
            ViewBag.channel = channel;
            return View(model);
        }
    }
}
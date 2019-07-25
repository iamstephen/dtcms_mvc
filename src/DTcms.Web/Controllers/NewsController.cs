using DTcms.Common;
using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTcms.Model;
using System.Data;

namespace DTcms.Web.Controllers
{
    public class NewsController : BasePage
    {
        // GET: News
        public ActionResult List()
        {
            const int pagesize = 12;
            string channel = "news"; //频道名称
            site_channel site_Channel = new BasePage().get_channel_model(channel);
            int page;         //当前页码
            int category_id;  //类别ID
            int totalcount;   //OUT数据总数
            string pagelist;  //分页页码
            article_category model = new article_category(); //分类的实体
            page = DTRequest.GetQueryInt("page", 1);
            category_id = DTRequest.GetQueryInt("category_id");
            BLL.article_category bll = new BLL.article_category();
            model.title = "所有类别";
            if (category_id > 0) //如果ID获取到，将使用ID
            {
                if (bll.Exists(category_id))
                {
                    model = bll.GetModel(category_id);
                    if (!string.IsNullOrEmpty(model.link_url))
                    {
                        Redirect(model.link_url);
                    }
                }
            }
            DataTable newsList1 = new BasePage().get_article_list(channel, category_id, 1, "status=0 and is_top=1");
            DataTable newsList = new BasePage().get_article_list(channel, category_id, pagesize, page, "status=0 and is_top=0", out totalcount, out pagelist, "news_list", category_id, "__id__");
            ViewBag.site_Channel = site_Channel;
            ViewBag.channel = channel;
            ViewBag.category_id = category_id;
            ViewBag.article_category = model;
            ViewBag.newsList1 = newsList1;
            ViewBag.newsList = newsList;
            ViewBag.pagelist = pagelist;
            return View();
        }

        public ActionResult Show()
        {
            string channel = "news"; //频道名称
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
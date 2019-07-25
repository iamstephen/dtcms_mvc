using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;

namespace DTcms.Web.UI
{
    public partial class BasePage : Controller
    {
        /// <summary>
        /// 返回频道实体类
        /// </summary>
        /// <param name="channel_name">频道名称</param>
        /// <returns></returns>
        public Model.site_channel get_channel_model(string channel_name) {
            return new BLL.site_channel().GetModel(channel_name);
        }
    }
}

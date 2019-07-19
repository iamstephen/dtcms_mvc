using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DTcms.Web.HtmlExtensions
{
    public static class HtmlGenericControl
    {
        public static MvcHtmlString Article_editCreateOtherField(this HtmlHelper htmlHelper, List<Model.article_attribute_field> ls)
        {
            foreach (Model.article_attribute_field modelt in ls)
            {
                //创建一个dl标签
                TagBuilder htmlDL = new TagBuilder("dl");
                TagBuilder htmlDT = new TagBuilder("dt");
                TagBuilder htmlDD = new TagBuilder("dd");
                htmlDT.InnerHtml = modelt.title;

                switch (modelt.control_type)
                {
                    case "single-text": //单行文本
                        //创建一个TextBox控件
                        TagBuilder txtControl = new TagBuilder("input");
                        txtControl.MergeAttribute("id", "field_control_" + modelt.name);
                        //CSS样式及TextMode设置
                        if (modelt.control_type == "single-text") //单行
                        {
                            txtControl.AddCssClass("input normal");
                            //是否密码框
                            if (modelt.is_password == 1)
                            {
                                txtControl.MergeAttribute("type", "password");
                            }
                            else {
                                txtControl.MergeAttribute("type", "text");
                            }
                        }
                        else if (modelt.control_type == "number") //数字
                        {
                            txtControl.AddCssClass("input small");
                        }
                        else if (modelt.control_type == "datetime") //时间日期
                        {
                            txtControl.AddCssClass("input rule-date-input");
                            txtControl.Attributes.Add("onfocus", "WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})");
                        }
                        else if (modelt.control_type == "images" || modelt.control_type == "video") //图片视频
                        {
                            txtControl.AddCssClass("input normal upload-path");
                        }
                        //设置默认值
                        //txtControl.Text = modelt.default_value;
                        //验证提示信息
                        if (!string.IsNullOrEmpty(modelt.valid_tip_msg))
                        {
                            txtControl.Attributes.Add("tipmsg", modelt.valid_tip_msg);
                        }
                        //验证失败提示信息
                        if (!string.IsNullOrEmpty(modelt.valid_error_msg))
                        {
                            txtControl.Attributes.Add("errormsg", modelt.valid_error_msg);
                        }
                        //验证表达式
                        if (!string.IsNullOrEmpty(modelt.valid_pattern))
                        {
                            txtControl.Attributes.Add("datatype", modelt.valid_pattern);
                            txtControl.Attributes.Add("sucmsg", " ");
                        }
                        //创建一个Label控件
                        TagBuilder labelControl = new TagBuilder("label");
                        txtControl.AddCssClass("Validform_checktip");
                        labelControl.SetInnerText(modelt.valid_tip_msg);

                        //将控件添加至DD中
                        htmlDD.InnerHtml = txtControl.ToString(TagRenderMode.SelfClosing);
                        //如果是图片则添加上传按钮
                        if (modelt.control_type == "images")
                        {
                            TagBuilder htmlBtn = new TagBuilder("div");
                            htmlBtn.Attributes.Add("class", "upload-box upload-img");
                            htmlBtn.Attributes.Add("style", "margin-left:4px;");
                            htmlDD.InnerHtml=htmlBtn.ToString(TagRenderMode.Normal);
                        }
                        //如果是视频则添加上传按钮
                        if (modelt.control_type == "video")
                        {
                            TagBuilder htmlBtn = new TagBuilder("div");
                            htmlBtn.Attributes.Add("class", "upload-box upload-video");
                            htmlBtn.Attributes.Add("style", "margin-left:4px;");
                            htmlDD.InnerHtml = htmlBtn.ToString(TagRenderMode.Normal);
                        }
                        htmlDD.InnerHtml=labelControl.ToString(TagRenderMode.Normal);
                        break;
                    case "multi-text": //多行文本
                        goto case "single-text";
                    case "editor": //编辑器
                        TagBuilder txtTextArea = new TagBuilder("textarea");
                        txtTextArea.MergeAttribute("id", "field_control_" + modelt.name);
                        //txtTextArea.Attributes.Add("style", "visibility:hidden;");
                        //是否简洁型编辑器
                        if (modelt.editor_type == 1)
                        {
                            txtTextArea.Attributes.Add("class", "editor-mini");
                        }
                        else
                        {
                            txtTextArea.Attributes.Add("class", "editor");
                        }
                        //txtTextArea.Value = modelt.default_value; //默认值
                        //验证提示信息
                        if (!string.IsNullOrEmpty(modelt.valid_tip_msg))
                        {
                            txtTextArea.Attributes.Add("tipmsg", modelt.valid_tip_msg);
                        }
                        //验证失败提示信息
                        if (!string.IsNullOrEmpty(modelt.valid_error_msg))
                        {
                            txtTextArea.Attributes.Add("errormsg", modelt.valid_error_msg);
                        }
                        //验证表达式
                        if (!string.IsNullOrEmpty(modelt.valid_pattern))
                        {
                            txtTextArea.Attributes.Add("datatype", modelt.valid_pattern);
                            txtTextArea.Attributes.Add("sucmsg", " ");
                        }
                        //创建一个Label控件
                        TagBuilder labelControl2 = new TagBuilder("lebal");
                        labelControl2.AddCssClass("Validform_checktip");
                        labelControl2.SetInnerText(modelt.valid_tip_msg);
                        //将控件添加至DD中
                        htmlDD.InnerHtml = txtTextArea.ToString(TagRenderMode.Normal)+ labelControl2.ToString(TagRenderMode.Normal);
                        break;
                    case "images": //图片上传
                        goto case "single-text";
                    case "video": //视频上传
                        goto case "single-text";
                    case "number": //数字
                        goto case "single-text";
                    case "datetime": //时间日期
                        goto case "single-text";
                    case "checkbox": //复选框
                        TagBuilder cbControl = new TagBuilder("input");
                        cbControl.MergeAttribute("id", "field_control_" + modelt.name);
                        cbControl.MergeAttribute("type", "checkbox");
                        //默认值
                        if (modelt.default_value == "1")
                        {
                            cbControl.MergeAttribute("Checked", "true");
                        }
                        TagBuilder htmlDiv1 = new TagBuilder("div");
                        htmlDiv1.Attributes.Add("class", "rule-single-checkbox");
                        htmlDiv1.InnerHtml=cbControl.ToString(TagRenderMode.Normal);
                        //将控件添加至DD中
                        htmlDD.InnerHtml = htmlDiv1.ToString(TagRenderMode.Normal);
                        if (!string.IsNullOrEmpty(modelt.valid_tip_msg))
                        {
                            //创建一个Label控件
                            TagBuilder labelControl3 = new TagBuilder("label");
                            labelControl3.AddCssClass("Validform_checktip");
                            labelControl3.SetInnerText(modelt.valid_tip_msg);
                            htmlDD.InnerHtml = labelControl3.ToString(TagRenderMode.Normal);
                        }
                        break;
                    case "multi-radio": //多项单选
                        TagBuilder rblControl = new TagBuilder("input");
                        rblControl.MergeAttribute("id", "field_control_" + modelt.name);
                        rblControl.MergeAttribute("type", "radio");
                        //rblControl.RepeatDirection = RepeatDirection.Horizontal;
                        //rblControl.RepeatLayout = RepeatLayout.Flow;
                        TagBuilder htmlDiv2 = new TagBuilder("div");
                        htmlDiv2.Attributes.Add("class", "rule-multi-radio");
                        htmlDiv2.InnerHtml=rblControl.ToString(TagRenderMode.SelfClosing);
                        //赋值选项(先根据文本是否为空，后期可能添加绑定类型字段)
                        if (!string.IsNullOrEmpty(modelt.item_option))
                        {
                            string[] valArr = modelt.item_option.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.None);
                            for (int i = 0; i < valArr.Length; i++)
                            {
                                string[] valItemArr = valArr[i].Split('|');
                                if (valItemArr.Length == 2)
                                {
                                    //rblControl.Items.Add(new ListItem(valItemArr[0], valItemArr[1]));
                                }
                            }
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(modelt.BindSQL) && !string.IsNullOrEmpty(modelt.BindSQLTitle) && !string.IsNullOrEmpty(modelt.BindSQLValue))
                            {
                                //绑定sql
                                DataTable dt = DTcms.DBUtility.DbHelperSQL.Query(modelt.BindSQL).Tables[0];
                                if (dt.Rows.Count > 0)
                                {
                                    foreach (DataRow dr in dt.Rows)
                                    {
                                        //rblControl.Items.Add(new ListItem(dr[modelt.BindSQLTitle.Trim()].ToString(), dr[modelt.BindSQLValue.Trim()].ToString()));
                                    }
                                }
                            }
                        }
                        //rblControl.SelectedValue = modelt.default_value; //默认值
                        //创建一个Label控件
                        TagBuilder labelControl4 = new TagBuilder("label");
                        labelControl4.AddCssClass("Validform_checktip");
                        labelControl4.SetInnerText(modelt.valid_tip_msg);
                        //将控件添加至DD中
                        htmlDD.InnerHtml = htmlDiv2.ToString(TagRenderMode.Normal)+labelControl4.ToString(TagRenderMode.Normal);
                        break;
                    case "multi-checkbox": //多项多选
                        TagBuilder cblControl = new TagBuilder("input");
                        cblControl.MergeAttribute("id", "field_control_" + modelt.name);
                        cblControl.MergeAttribute("type", "checkbox");
                        //cblControl.RepeatDirection = RepeatDirection.Horizontal;
                        //cblControl.RepeatLayout = RepeatLayout.Flow;
                        TagBuilder htmlDiv3 = new TagBuilder("div");
                        htmlDiv3.Attributes.Add("class", "rule-multi-checkbox");
                        htmlDiv3.InnerHtml = cblControl.ToString(TagRenderMode.SelfClosing);
                        //赋值选项
                        string[] valArr2 = modelt.item_option.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.None);
                        for (int i = 0; i < valArr2.Length; i++)
                        {
                            string[] valItemArr2 = valArr2[i].Split('|');
                            if (valItemArr2.Length == 2)
                            {
                                //cblControl.Items.Add(new ListItem(valItemArr2[0], valItemArr2[1]));
                            }
                        }
                        //cblControl.SelectedValue = modelt.default_value; //默认值
                        //创建一个Label控件
                        TagBuilder labelControl5 = new TagBuilder("label");
                        labelControl5.AddCssClass("Validform_checktip");
                        labelControl5.SetInnerText(modelt.valid_tip_msg);
                        //将控件添加至DD中
                        htmlDD.InnerHtml = htmlDiv3.ToString(TagRenderMode.Normal) + labelControl5.ToString(TagRenderMode.Normal);
                        break;
                }

                //将DT和DD添加到DL中
                htmlDD.InnerHtml = htmlDT.ToString(TagRenderMode.Normal) + htmlDD.ToString(TagRenderMode.Normal);
                //将DL添加至field_tab_content中
                return MvcHtmlString.Create(htmlDL.ToString(TagRenderMode.Normal));
            }
            return MvcHtmlString.Create("");
        }
    }
}
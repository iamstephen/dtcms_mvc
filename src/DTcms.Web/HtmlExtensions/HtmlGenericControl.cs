using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTcms.Model;

namespace DTcms.Web.HtmlExtensions
{
    public static class HtmlGenericControl
    {
        public static MvcHtmlString Article_editCreateOtherField(this HtmlHelper htmlHelper, List<Model.article_attribute_field> ls, article model)
        {
            string html = string.Empty;
            bool isAdd = model.id == 0;//如果id=0，则是添加
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
                        txtControl.MergeAttribute("id", modelt.name);
                        txtControl.MergeAttribute("name", modelt.name);
                        //CSS样式及TextMode设置
                        if (modelt.control_type == "single-text") //单行
                        {
                            txtControl.AddCssClass("input normal");
                            //是否密码框
                            if (modelt.is_password == 1)
                            {
                                txtControl.MergeAttribute("type", "password");
                            }
                            else
                            {
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
                        txtControl.MergeAttribute("value", isAdd ? modelt.default_value : model.fields[modelt.name]);
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
                        labelControl.AddCssClass("Validform_checktip");
                        labelControl.SetInnerText(modelt.valid_tip_msg);

                        //将控件添加至DD中
                        htmlDD.InnerHtml = txtControl.ToString(TagRenderMode.SelfClosing);
                        //如果是图片则添加上传按钮
                        if (modelt.control_type == "images")
                        {
                            TagBuilder htmlBtn = new TagBuilder("div");
                            htmlBtn.Attributes.Add("class", "upload-box upload-img");
                            htmlBtn.Attributes.Add("style", "margin-left:4px;");
                            htmlDD.InnerHtml += htmlBtn.ToString(TagRenderMode.Normal);
                        }
                        //如果是视频则添加上传按钮
                        if (modelt.control_type == "video")
                        {
                            TagBuilder htmlBtn = new TagBuilder("div");
                            htmlBtn.Attributes.Add("class", "upload-box upload-video");
                            htmlBtn.Attributes.Add("style", "margin-left:4px;");
                            htmlDD.InnerHtml += htmlBtn.ToString(TagRenderMode.Normal);
                        }
                        htmlDD.InnerHtml += labelControl.ToString(TagRenderMode.Normal);
                        break;
                    case "multi-text": //多行文本
                        TagBuilder txtTextArea0 = new TagBuilder("textarea");
                        txtTextArea0.MergeAttribute("id", modelt.name);
                        txtTextArea0.MergeAttribute("name", modelt.name);
                        txtTextArea0.MergeAttribute("class", "input");
                        //设置默认值
                        txtTextArea0.SetInnerText(isAdd ? modelt.default_value : model.fields[modelt.name]);
                        //验证提示信息
                        if (!string.IsNullOrEmpty(modelt.valid_tip_msg))
                        {
                            txtTextArea0.Attributes.Add("tipmsg", modelt.valid_tip_msg);
                        }
                        //验证失败提示信息
                        if (!string.IsNullOrEmpty(modelt.valid_error_msg))
                        {
                            txtTextArea0.Attributes.Add("errormsg", modelt.valid_error_msg);
                        }
                        //验证表达式
                        if (!string.IsNullOrEmpty(modelt.valid_pattern))
                        {
                            txtTextArea0.Attributes.Add("datatype", modelt.valid_pattern);
                            txtTextArea0.Attributes.Add("sucmsg", " ");
                        }
                        //创建一个Label控件
                        TagBuilder labelControl0 = new TagBuilder("label");
                        labelControl0.AddCssClass("Validform_checktip");
                        labelControl0.SetInnerText(modelt.valid_tip_msg);

                        //将控件添加至DD中
                        htmlDD.InnerHtml = txtTextArea0.ToString(TagRenderMode.Normal);
                        htmlDD.InnerHtml += labelControl0.ToString(TagRenderMode.Normal);
                        break;
                    case "editor": //编辑器
                        TagBuilder txtTextArea = new TagBuilder("textarea");
                        txtTextArea.MergeAttribute("id", modelt.name);
                        txtTextArea.MergeAttribute("name", modelt.name);
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
                        txtTextArea.SetInnerText(isAdd ? modelt.default_value : model.fields[modelt.name]);
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
                        htmlDD.InnerHtml = txtTextArea.ToString(TagRenderMode.Normal) + labelControl2.ToString(TagRenderMode.Normal);
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
                        cbControl.MergeAttribute("id", modelt.name);
                        cbControl.MergeAttribute("name", modelt.name);
                        cbControl.MergeAttribute("type", "checkbox");
                        cbControl.MergeAttribute("value", "1");
                        //默认值
                        if (isAdd)
                        {
                            if (modelt.default_value == "1")
                            {
                                cbControl.MergeAttribute("checked", "checked");
                            }
                        }
                        else
                        {
                            if (model.fields[modelt.name] == "1")
                            {
                                cbControl.MergeAttribute("checked", "checked");
                            }
                        }
                        TagBuilder htmlDiv1 = new TagBuilder("div");
                        htmlDiv1.Attributes.Add("class", "rule-single-checkbox");
                        htmlDiv1.InnerHtml = cbControl.ToString(TagRenderMode.Normal);
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
                        TagBuilder rblControl = new TagBuilder("span");
                        rblControl.MergeAttribute("id", modelt.name);
                        TagBuilder htmlDiv2 = new TagBuilder("div");
                        htmlDiv2.Attributes.Add("class", "rule-multi-radio");

                        //赋值选项(先根据文本是否为空，后期可能添加绑定类型字段)
                        if (!string.IsNullOrEmpty(modelt.item_option))
                        {
                            string[] valArr = modelt.item_option.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.None);
                            for (int i = 0; i < valArr.Length; i++)
                            {
                                string[] valItemArr = valArr[i].Split('|');
                                if (valItemArr.Length == 2)
                                {
                                    TagBuilder rblControlitem = new TagBuilder("input");
                                    rblControlitem.MergeAttribute("id", modelt.name + "_" + i);
                                    rblControlitem.MergeAttribute("name", modelt.name);
                                    rblControlitem.MergeAttribute("type", "radio");
                                    rblControlitem.MergeAttribute("value", valItemArr[1]);

                                    if (isAdd)
                                    {
                                        if (valItemArr[1] == modelt.default_value)
                                        {
                                            rblControlitem.MergeAttribute("checked", "checked");
                                        }
                                    }
                                    else
                                    {
                                        if (valItemArr[1] == model.fields[modelt.name])
                                        {
                                            rblControlitem.MergeAttribute("checked", "checked");
                                        }
                                    }



                                    TagBuilder rblControllabel = new TagBuilder("label");
                                    rblControllabel.MergeAttribute("for", modelt.name + "_" + i);
                                    rblControllabel.SetInnerText(valItemArr[0]);
                                    rblControl.InnerHtml += rblControlitem.ToString(TagRenderMode.SelfClosing);
                                    rblControl.InnerHtml += rblControllabel.ToString(TagRenderMode.Normal);
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
                                    for (int i = 0; i < dt.Rows.Count; i++)
                                    {
                                        TagBuilder rblControlitem = new TagBuilder("input");
                                        rblControlitem.MergeAttribute("id", modelt.name + "_" + i);
                                        rblControlitem.MergeAttribute("name", modelt.name);
                                        rblControlitem.MergeAttribute("type", "radio");
                                        rblControlitem.MergeAttribute("value", dt.Rows[i][modelt.BindSQLValue.Trim()].ToString());

                                        if (isAdd)
                                        {
                                            if (dt.Rows[i][modelt.BindSQLValue.Trim()].ToString() == modelt.default_value)
                                            {
                                                rblControlitem.MergeAttribute("checked", "checked");
                                            }
                                        }
                                        else
                                        {
                                            if (dt.Rows[i][modelt.BindSQLValue.Trim()].ToString() == model.fields[modelt.name])
                                            {
                                                rblControlitem.MergeAttribute("checked", "checked");
                                            }
                                        }


                                        TagBuilder rblControllabel = new TagBuilder("label");
                                        rblControllabel.MergeAttribute("for", modelt.name + "_" + i);
                                        rblControllabel.SetInnerText(dt.Rows[i][modelt.BindSQLTitle.Trim()].ToString());
                                        rblControl.InnerHtml += rblControlitem.ToString(TagRenderMode.SelfClosing);
                                        rblControl.InnerHtml += rblControllabel.ToString(TagRenderMode.Normal);
                                    }
                                }
                            }
                        }
                        htmlDiv2.InnerHtml = rblControl.ToString(TagRenderMode.Normal);
                        //创建一个Label控件
                        TagBuilder labelControl4 = new TagBuilder("label");
                        labelControl4.AddCssClass("Validform_checktip");
                        labelControl4.SetInnerText(modelt.valid_tip_msg);
                        //将控件添加至DD中
                        htmlDD.InnerHtml = htmlDiv2.ToString(TagRenderMode.Normal) + labelControl4.ToString(TagRenderMode.Normal);
                        break;
                    case "multi-checkbox": //多项多选
                        TagBuilder cblControl = new TagBuilder("span");
                        cblControl.MergeAttribute("id", modelt.name);
                        TagBuilder htmlDiv3 = new TagBuilder("div");
                        htmlDiv3.Attributes.Add("class", "rule-multi-checkbox");

                        //赋值选项
                        string[] valArr2 = modelt.item_option.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.None);
                        for (int i = 0; i < valArr2.Length; i++)
                        {
                            string[] valItemArr2 = valArr2[i].Split('|');
                            string[] valArr = { };
                            if (model.fields != null)
                                valArr = model.fields[modelt.name].Split(',');//获取该字段的值，如"游泳,跑步"
                            if (valItemArr2.Length == 2)
                            {
                                TagBuilder rblControlitem = new TagBuilder("input");
                                rblControlitem.MergeAttribute("id", modelt.name + "_" + i);
                                rblControlitem.MergeAttribute("name", modelt.name);
                                rblControlitem.MergeAttribute("type", "checkbox");
                                rblControlitem.MergeAttribute("value", valItemArr2[1]);

                                TagBuilder rblControllabel = new TagBuilder("label");
                                rblControllabel.MergeAttribute("for", modelt.name + "_" + i);
                                rblControllabel.SetInnerText(valItemArr2[0]);
                                cblControl.InnerHtml += rblControlitem.ToString(TagRenderMode.SelfClosing);
                                cblControl.InnerHtml += rblControllabel.ToString(TagRenderMode.Normal);

                                if (isAdd)
                                {
                                    if (modelt.default_value.Contains(valItemArr2[1]))
                                        rblControlitem.MergeAttribute("checked", "checked");
                                }
                                else {
                                    //判断这个选项是否在valArr
                                    if (valArr.Contains(valItemArr2[1]))
                                        rblControlitem.MergeAttribute("checked", "checked");
                                }
                            }
                        }
                        htmlDiv3.InnerHtml = cblControl.ToString(TagRenderMode.Normal);
                        //创建一个Label控件
                        TagBuilder labelControl5 = new TagBuilder("label");
                        labelControl5.AddCssClass("Validform_checktip");
                        labelControl5.SetInnerText(modelt.valid_tip_msg);
                        //将控件添加至DD中
                        htmlDD.InnerHtml = htmlDiv3.ToString(TagRenderMode.Normal) + labelControl5.ToString(TagRenderMode.Normal);
                        break;
                }

                //将DT和DD添加到DL中
                htmlDL.InnerHtml = htmlDT.ToString(TagRenderMode.Normal) + htmlDD.ToString(TagRenderMode.Normal);
                //将DL添加至field_tab_content中
                html += htmlDL.ToString(TagRenderMode.Normal);
            }
            return MvcHtmlString.Create(html.ToString());
        }
    }
}
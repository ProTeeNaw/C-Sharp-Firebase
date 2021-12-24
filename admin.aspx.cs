using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Linflax
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void AddSubjectsButton12_(object sender, EventArgs e)
        {
            //SelectedSubjectsList.Items.Add(Request.Cookies["HomeLang12"].Value);

            //if (Request.Cookies["HomeLang12"] != null)
            //{
            //    SelectedSubjectsList.Items.Add(Request.Cookies["HomeLang12"].Value);
            //}

            //if (Request.Cookies["FALLang12"] != null)
            //{
            //    SelectedSubjectsList.Items.Add(Request.Cookies["FALLang12"].Value);
            //}

            //if(SelectedSubjectsList.Items.Equals(Request.Cookies["HomeLang12"].Value) == false)
            //{
            //    SelectedSubjectsList.Items.Add(Request.Cookies["HomeLang12"].Value);
            //}
            //else
            //{
            //    Response.Redirect("NotAddedToList", false);
            //}

            if(SelectedSubjectsList.Items.Count > 0)
            {
                for (int i = 0; i < SelectedSubjectsList.Items.Count; i++)
                {
                    if (Request.Cookies["HomeLang12"].Value == SelectedSubjectsList.Items.FindByValue(Request.Cookies["HomeLang12"].Value).ToString())
                    {
                        SelectedSubjectsList.Items.Add(Request.Cookies["HomeLang12"].Value);
                        Request.Cookies.Remove("HomeLang12");
                    }
                }
            }
            else
            {
                if(Request.Cookies["HomeLang12"] != null)
                {
                    SelectedSubjectsList.Items.Add(Request.Cookies["HomeLang12"].Value);
                }

                if (Request.Cookies["FALLang12"] != null)
                {
                    SelectedSubjectsList.Items.Add(Request.Cookies["FALLang12"].Value);
                }
            }
        }

        protected void Test_Click(object sender, EventArgs e)
        {
            
        }
    }
}
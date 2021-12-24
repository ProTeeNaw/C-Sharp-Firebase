using FirebaseAdmin.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Linflax
{
    public partial class settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Auth auth = new Auth();
            auth.InitializeApp();
            GetUserInfo();
        }

        private async void GetUserInfo()
        {
            if (Request.Cookies["_snbslg"] != null)
            {
                try
                {
                    var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["_snbslg"].Value, true);

                    UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

                    if (userRecord.DisplayName != null)
                    {
                        if (userRecord.DisplayName.IndexOf(' ') >= 0)
                        {
                            Username.Text = userRecord.DisplayName.Substring(0, userRecord.DisplayName.IndexOf(' '));
                        }
                        else
                        {
                            Username.Text = userRecord.DisplayName;
                        }
                    }
                }
                catch (FirebaseAuthException ex)
                {
                    if (ex.AuthErrorCode == AuthErrorCode.ExpiredIdToken)
                    {
                        Response.Redirect("http://localhost:5000", false);
                    }
                    else
                    {
                        Console.WriteLine(ex.Message);
                    }
                }
            }
            else
            {
                Response.Redirect("http://localhost:5000", false);
            }
        }

        protected void GetUCT(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Cape Town";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Chicago Referencing Style");
            RefStyle.Items.Add("MLA Referencing style");
            RefStyle.Items.Add("IEEE Referencing Style");
            RefStyle.Items.Add("Vancouver Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUFH(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Fort Hare";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUFS(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Free State";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Chicago Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUKZN(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Kwazulu Natal";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("Vancouver Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUL(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Limpopo";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("Vancouver Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetNWU(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: North West University";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("LAW Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUP(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Pretoria";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetRU(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Cape Town";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Chicago Referencing Style");
            RefStyle.Items.Add("MLA Referencing style");
            RefStyle.Items.Add("LAW Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetSMU(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Sefako Makgatho Health Science University";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetSUN(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Stellenbosch University";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Footnote Referencing Style");
            RefStyle.Items.Add("Vancouver Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUWC(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Western Cape";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Chicago Referencing Style");
            RefStyle.Items.Add("MLA Referencing style");
            RefStyle.Items.Add("LAW Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetWITS(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: WITS University";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Chicago Referencing Style");
            RefStyle.Items.Add("MLA Referencing style");
            RefStyle.Items.Add("IEEE Referencing Style");
            RefStyle.Items.Add("SALJ Referencing Style");
            RefStyle.Items.Add("LAW Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUJ(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Johannesburg";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetNMU(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Nelson Mandela University";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUNISA(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of South Africa";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Chicago Referencing Style");
            RefStyle.Items.Add("MLA Referencing style");
            RefStyle.Items.Add("AAA Referencing Style");
            RefStyle.Items.Add("Vancouver Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUV(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Venda";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");
            RefStyle.Items.Add("Documentary Referencing Style");
            RefStyle.Items.Add("MLA Referencing style");
            RefStyle.Items.Add("IEEE Referencing Style");
            RefStyle.Items.Add("Vancouver Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetWSU(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Walter Sisulu University";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUZ(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Zululand";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetCPUT(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Cape Peninsula University of Technology";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("Vancouver Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetCUT(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Central University of Technology";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetDUT(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Durban University of Technology";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetMUT(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Mangosotho University of Technology";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetUM(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: University of Mpumalanga";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetSPU(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Sol Plaatjie University";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetTUT(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Tshwane University of Technology";
            RefStyle.Items.Add("Havard Referencing Style");
            RefStyle.Items.Add("APA Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }

        protected void GetVUT(object sender, EventArgs e)
        {
            VarsName.Text = "Institution: Vaal University of Technology";
            RefStyle.Items.Add("Havard Referencing Style");

            Varsities.Visible = false;
            ReferencePanel.Visible = true;
        }
    }
}
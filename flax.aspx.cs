using FirebaseAdmin;
using FirebaseAdmin.Auth;
using Google.Apis.Auth.OAuth2;
using Google.Cloud.Firestore;
using Google.Cloud.Firestore.V1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Linflax
{
    public partial class index : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Auth auth = new Auth();
            auth.InitializeApp();
            //* Check if user is logged in
            //CheckAuth();
        }

        private async void CheckAuth()
        {
            if (Request.Cookies["_snbslg"] != null)
            {
                try
                {
                    var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["_snbslg"].Value, true);

                    UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

                    //if (userRecord.DisplayName != null)
                    //{
                    //    if (userRecord.DisplayName.IndexOf(' ') >= 0)
                    //    {
                    //        Username.Text = userRecord.DisplayName.Substring(0, userRecord.DisplayName.IndexOf(' '));
                    //    }
                    //    else
                    //    {
                    //        Username.Text = userRecord.DisplayName;
                    //    }
                    //}

                    //EmailAdress.Text = userRecord.Email;


                    if (userRecord.PhotoUrl != null)
                    {
                        //ProfileImage1.ImageUrl = userRecord.PhotoUrl;
                        //ProfileImage2.ImageUrl = userRecord.PhotoUrl;
                        //ProfileImage3.ImageUrl = userRecord.PhotoUrl;
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

        protected void SettingsClick(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Working Event handler')</script>");
        }

        protected void NewCitation(object sender, EventArgs e)
        {
            //NewCite.Visible = true;
            //DashboardPanel.Visible = false;
            //NavTitle.Text = "Citation: New Citation";

            //Sources.Items.Clear();
            //Citations citations = new Citations();
            //citations.GetUniversity(Sources, RefStyle);
        }

        protected void ShowClasses(object sender, EventArgs e)
        {
            Response.Redirect("http://failed.com", false);
            HideAllPanels();
            Title.Text = "Classes";
            Classes.Visible = true;
        }

        private void HideAllPanels()
        {
            Dashboard.Visible = false;
            Classes.Visible = false;
        }

        private async void GetSources()
        {
            FirestoreDb db = FirestoreDb.Create("DBE");

            CollectionReference usersRef = db.Collection("schools");
            QuerySnapshot snapshot = await usersRef.GetSnapshotAsync();
            foreach (DocumentSnapshot document in snapshot.Documents)
            {
                Dictionary<string, object> documentDictionary = document.ToDictionary();
                //var name = documentDictionary["name"].ToString();
            }

            private async void GetDB()
            {
               FirestoreDb db = FirestoreDb.Create("synblend");

               CollectionReference usersRef = db.Collection("users");
               QuerySnapshot snapshot = await usersRef.GetSnapshotAsync();
               foreach (DocumentSnapshot document in snapshot.Documents)

               {
                   Dictionary<string, object> documentDictionary = document.ToDictionary();
                   var name = documentDictionary["name"].ToString();
                   Response.Write("<script>alert('"+name+"')</script>");

                   Get user details by UID
                   UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(CheckAuth().Result);

                   Check display name for name if user is authenticated using third party OAuth like Facebook
               }
        }
    }
} 
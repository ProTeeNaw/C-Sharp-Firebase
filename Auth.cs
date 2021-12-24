using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FirebaseAdmin;
using Google.Apis.Auth.OAuth2;

namespace Linflax
{
    public class Auth
    {
        public void InitializeApp()
        {
            if (FirebaseApp.DefaultInstance == null)
            {
                Environment.SetEnvironmentVariable("GOOGLE_APPLICATION_CREDENTIALS", @"C:\Users\tnmun\Documents\Synblend\Projects\Linflax\Linflax\Linflax\serviceaccount.json");
                FirebaseApp.Create(new AppOptions()
                {
                    Credential = GoogleCredential.GetApplicationDefault()
                });
            }
        }

        public void GetSources()
        {

        }
    }
}
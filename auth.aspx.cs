using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Linflax
{
    public partial class register : System.Web.UI.Page
    {
        string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\StudentDB.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection conn;
        SqlCommand comm;
        DataSet ds;
        SqlDataAdapter adap;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login(object sender, EventArgs e)
        {
            string sql;
            conn = new SqlConnection(constring);
            adap = new SqlDataAdapter();
            ds = new DataSet();
            conn.Open();
            sql = @"SELECT * FROM Records";
            comm = new SqlCommand(sql, conn);
            adap.SelectCommand = comm;
            
            conn.Close();
        }

        protected void UserID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;

namespace LocalArtisansMarketPlace
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ronak\Desktop\AWP PROJECT\LocalArtisansMarketPlace\LocalArtisansMarketPlace\App_Data\LocalArtisanMarketPlace.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM UserDetails WHERE Email = '"+ tb1.Text +"' AND Password = '"+tb2.Text+"'", con);

            SqlDataAdapter sqldataadapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sqldataadapter.Fill(dt);
            if (tb1.Text == "Admin@gmail.com" && tb2.Text == "123")
            {
                l3.Text = "Admin Login Successfull";
                Response.Redirect("AddProduct.aspx");
            }
            else if (dt.Rows.Count == 1)
            {
                l3.Text = "Login Successfull";
                Session["username"] = tb1.Text;
                Response.Redirect("Default.aspx");
                hl1.Visible = false;
            }
            else
            {
                l3.Text = "Login Unsuccessfull";
            }
        }
    }
}
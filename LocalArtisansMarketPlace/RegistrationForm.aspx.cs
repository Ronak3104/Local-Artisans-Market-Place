using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;

namespace LocalArtisansMarketPlace
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ronak\Desktop\AWP PROJECT\LocalArtisansMarketPlace\LocalArtisansMarketPlace\App_Data\LocalArtisanMarketPlace.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Query = "insert into UserDetails values('" + tb1.Text + "','" + tb2.Text + "','" + tb3.Text + "','"+ ddl1.SelectedItem.Value +"','"+ tb4.Text +"','"+ tb5.Text +"','"+ tb6.Text +"')";
            SqlCommand cmd = new SqlCommand(Query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if(i > 0)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                l9.Text = "Registered Unsuccessful!";
            }
            con.Close();
            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LocalArtisansMarketPlace
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ronak\Desktop\AWP PROJECT\LocalArtisansMarketPlace\LocalArtisansMarketPlace\App_Data\LocalArtisanMarketPlace.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Query = "insert into Feedback(Fname,Lname,Contactnumber,Feedback) values('"+ tb1.Text +"','"+ tb2.Text +"','"+ tb3.Text +"','"+ tb4.Text +"')";
            SqlCommand cmd = new SqlCommand(Query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0) 
            {
                l5.Text = "Thanks for your valuable feedback";
            }
            else
            {
                l5.Text = "Feedback not recorded";
            }
        }
    }
}
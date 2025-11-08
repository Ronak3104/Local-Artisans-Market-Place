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
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ronak\Desktop\AWP PROJECT\LocalArtisansMarketPlace\LocalArtisansMarketPlace\App_Data\LocalArtisanMarketPlace.mdf"";Integrated Security=True");
            if(fu1.HasFile)
            {
                string filename = fu1.PostedFile.FileName;
                string filepath = "Images/" + fu1.FileName;
                fu1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Product values('"+tb2.Text+ "','"+tb3.Text+ "','"+filepath+"','"+tb4.Text+ "','"+tb5.Text+"')",con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Default.aspx");
            }
        }
    }
}
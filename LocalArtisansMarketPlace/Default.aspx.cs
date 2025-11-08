using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LocalArtisansMarketPlace
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
            if (Session["username"] != null)
            {
                l1.Text = "Logged in as " + Session["username"].ToString();
                hl1.Visible = false;
                b1.Visible = true;
            }
            else
            {
                l1.Text = "Hello you can login here......";
                hl1.Visible = true;
                b1.Visible = false;
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
            l1.Text = "You have logged out sccessfully....";
        }

        protected void ib1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ronak\Desktop\AWP PROJECT\LocalArtisansMarketPlace\LocalArtisansMarketPlace\App_Data\LocalArtisanMarketPlace.mdf"";Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE (Pname) LIKE @Pname", con);
            cmd.Parameters.AddWithValue("@Pname", "%" + tb1.Text + "%");
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dl1.DataSourceID = null;
            dl1.DataSource = dt;
            dl1.DataBind();
        }

        protected void dl1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if(e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("ddl1"));
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }
    }
}
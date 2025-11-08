using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalArtisansMarketPlace
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                l2.Text = "Hello " + Session["username"].ToString() + " How may we help you?";
                l4.Visible = false;
            }
            else
            {
                l2.Text = "Hello please Login first ...";
                l4.Visible = false;
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            l4.Visible = true;
            if (ddl1.SelectedItem.Text.Equals("WANT TO RETURN THE PRODUCT")) ;
            l4.Text = "CONTACT US ON 120049872345";
            if (ddl1.SelectedItem.Text.Equals("ISSUE WITH REFUND PROCESS")) ;
            l4.Text = "CONTACT US ON 120049872385";
            if (ddl1.SelectedItem.Text.Equals("DAMAGED PRODUCT RECEIVED")) ;
            l4.Text = "CONTACT US ON 120049872355";
            if (ddl1.SelectedItem.Text.Equals("WRONG ITEM DELIVERED")) ;
            l4.Text = "CONTACT US ON 120049872365";
            if (ddl1.SelectedItem.Text.Equals("OTHER")) ;
            l4.Text = "CONTACT US ON 120049872325";

        }
    }
}
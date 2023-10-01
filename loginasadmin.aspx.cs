using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Stationery_Shop
{
    public partial class loginasadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "payal" && TextBox2.Text == "192")
            {
                Session["admin"] = TextBox1.Text;
                Label3.Text = ("Loginn success");
                Response.Redirect("Adminpanel.aspx");
            }
            else
            {
                Label3.Text = ("invalid login id");
            }
        }
    }
}
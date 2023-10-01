using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Stationery_Shop
{
    public partial class Adminpanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addproduct.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewproducts.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateproduct.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageuser.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginasadmin.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageorder.aspx");
        }
    }
}
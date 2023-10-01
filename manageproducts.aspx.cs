using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Stationery_Shop
{
    public partial class manageproducts : System.Web.UI.Page
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
    }
}
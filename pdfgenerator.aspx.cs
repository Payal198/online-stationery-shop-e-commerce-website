using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Stationery_Shop
{
    public partial class pdfgenerator : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"]== null)
                {
                    Response.Redirect("Default.aspx");
                }
            }

            String username = Session["username"].ToString();
             Label1.Text = username;

        }


    }
}
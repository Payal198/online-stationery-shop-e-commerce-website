using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Stationery_Shop
{
    public partial class Default : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["BuyItem"];
            //if(dt!= null)
            //{
            //    Label2.Text = dt.Rows.Count.ToString();
            //}
            //else
            //{
            //    Label2.Text = "0";
            //}
         }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddToCart.aspx");
        }

       
    }
}
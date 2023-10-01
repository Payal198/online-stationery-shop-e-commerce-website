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
    public partial class Default1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "False";

            if (Session["username"] != null) // login
            {
                Label3.Text = "loggin as " + Session["username"].ToString();
                HyperLink1.Visible = false;
                Button2.Visible = true;

            }
            else
            {
                Label3.Text = "login here ";
                HyperLink1.Visible = true;
                Button2.Visible = false;


            }
            
        }
       

           protected void Button4_Click(object sender, EventArgs e)
        {
         SqlDataAdapter sda = new SqlDataAdapter("Select * from productdetails where (productname like '%" + TextBox4.Text + "%') or (category like '%" + TextBox4.Text + "%' )", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        protected void DataList1_ItemCommand(object sender,DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
            }
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1,4);
            Image5.ImageUrl = "~/image/"+i.ToString()+".jpg";
        }

        protected void productcategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strQuery = "";
          
            SqlDataAdapter sda = new SqlDataAdapter("Select * from productdetails " + strQuery + " ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
           
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label productId = e.Item.FindControl("IDLabel") as Label;
            Label stock = e.Item.FindControl("Label1") as Label;
            Button btn = e.Item.FindControl("Button1") as Button;
            SqlDataAdapter sda =new SqlDataAdapter("Select * from productdetails where Id= '" + productId.Text + "' ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            String StockData = "";
            if( dt.Rows.Count > 0)
            {
                StockData = dt.Rows[0]["quantity"].ToString();
            }
            conn.Close();
            if(StockData == "0")
            {
                stock.Text = "out of stock";
                btn.Enabled = false;
                btn.Text = "sold out";

            }
            else
            {
                stock.Text = StockData;
            }
        }

        protected void Button2_Click(object sender, EventArgs e) // log out
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
            Label3.Text = "log out sussefully";
        }
    }
}
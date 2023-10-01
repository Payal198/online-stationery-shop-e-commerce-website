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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    Response.Redirect("Default.aspx");
                }
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");

            SqlDataAdapter sda = new SqlDataAdapter("Select * from userdetails  where emailadd='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count ==1)
            {
                Session["username"] = TextBox1.Text;
                Session["BuyItem"] = null;
                fillSavedCart();
                Response.Redirect("Default.aspx");

            }
            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "login failed......";
            }
        }
          
        private void fillSavedCart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("Id");
            dt.Columns.Add("productname");
            dt.Columns.Add("Image");
            dt.Columns.Add("Brand");
            dt.Columns.Add("category");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");
            String myquery = "Select * from cartdetails where emailadd='" + Session["username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while(i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i +1;
                    dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                    dr["Image"] = ds.Tables[0].Rows[i]["Image"].ToString();
                    dr["Brand"] = ds.Tables[0].Rows[0]["Brand"].ToString();
                    dr["category"] = ds.Tables[0].Rows[i]["category"].ToString();
                    dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                    dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                    int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }
            }
            else
            {
                Session["BuyItem"] = null;

            }
            Session["BuyItem"] = dt;

        }
    }
    }

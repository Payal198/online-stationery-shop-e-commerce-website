using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace Online_Stationery_Shop
{
    public partial class placeorder : System.Web.UI.Page
    {      
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");
        bool istrue = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"]== null)
                {
                    Response.Redirect("Default.aspx");
                }
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["BuyItem"] != null && Session["Orderid"] != null)
            {
                DataTable dt = (DataTable)Session["BuyItem"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    String Id = dt.Rows[i]["Id"].ToString();
                    int quantity = Convert.ToInt16(dt.Rows[i]["quantity"]);
                    SqlDataAdapter sda = new SqlDataAdapter("Select quantity from productdetails where Id= '" + Id + "'", conn);
                    DataTable dtable = new DataTable();
                    sda.Fill(dtable);
                    int Quantity = Convert.ToInt16(dtable.Rows[0][0]);
                    if (Quantity > 0)
                    {
                        conn.Open();
                        SqlCommand cmd = new SqlCommand(" Insert into orderdetails values('" + Session["OrderId"] + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["Id"] + ",'" + dt.Rows[i]["productname"] + "'," + dt.Rows[i]["price"] + ", " + dt.Rows[i]["quantity"] + ",'" + DateTime.Now.ToString("dd-mm-yyyy") + "', 'pending')", conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
                decreasequantity();
                payment();
                clearcart();
                Session["BuyItem"] = null;
                Response.Redirect("pdfgenerator.aspx");
            }
            else
            {
                Response.Redirect("AddToCart.aspx");
            }
        }
        public void decreasequantity()
        {
            DataTable dt = (DataTable)Session["BuyItem"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int Id = Convert.ToInt16(dt.Rows[i]["Id"]);
                int quantity = Convert.ToInt16(dt.Rows[i]["quantity"]);
                SqlDataAdapter sda = new SqlDataAdapter("Select quantity from productdetails where Id='" + Id + "' ", conn);
                DataTable dtble = new DataTable();
                sda.Fill(dtble);
                int pquantity = Convert.ToInt16(dtble.Rows[0][0]);
                if (pquantity > 0)
                {
                    int reduceQuantity = pquantity - quantity;
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Update productdetails set quantity= '" + reduceQuantity + "' where Id='" + Id + "'", conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    istrue = true;
                }
                else
                {
                    istrue = false;
                }
            }
        }
        public void payment()
        {
            if (istrue== true)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into carddetails values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')",conn);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Session["address"] = TextBox6.Text;
        }
        public void clearcart()
        {
            if (Session["username"] != null)
            {
                DataTable dt = (DataTable)Session["BuyItem"];
                for(int i= 0; i<= dt.Rows.Count -1; i++)
                {
                    int Id = Convert.ToInt16(dt.Rows[i]["Id"]);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Delete from cartdetails where Id='" + Id +"'and emailadd='" + Session["username"] + "' ", conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();

                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
           
     }
 }

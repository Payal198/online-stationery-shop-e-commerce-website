using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;

namespace Online_Stationery_Shop
{
    public partial class AddToCart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("login.aspx");
                }

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

                if (Request.QueryString["Id"] != null)
                {
                    if (Session["BuyItem"] == null)
                    {
                        dr = dt.NewRow();
                        SqlDataAdapter da = new SqlDataAdapter("Select * from productdetails where Id=" + Request.QueryString["Id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["Brand"] = ds.Tables[0].Rows[0]["Brand"].ToString();
                        dr["category"] = ds.Tables[0].Rows[0]["category"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("Insert into cartdetails values('" + dr["Id"] + "','" + dr["sno"] + "','" + dr["productname"] + "','" + dr["Brand"] + "','" + dr["Image"] + "','" + dr["category"] + "','" + dr["price"] + "','" + dr["quantity"] + "','" + Session["username"].ToString() + "')", conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["BuyItem"] = dt;
                        Button1.Enabled = true;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["BuyItem"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        SqlDataAdapter da = new SqlDataAdapter("Select * from productdetails where Id=" + Request.QueryString["Id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["Image"] = ds.Tables[0].Rows[0]["Image"].ToString();
                        dr["Brand"] = ds.Tables[0].Rows[0]["Brand"].ToString();
                        dr["category"] = ds.Tables[0].Rows[0]["category"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("Insert into cartdetails values('" + dr["Id"] + "','" + dr["sno"] + "','" + dr["productname"] + "','" + dr["Brand"] + "','" + dr["Image"] + "','" + dr["category"] + "','" + dr["price"] + "','" + dr["quantity"] + "','" + Session["username"].ToString() + "')", conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["BuyItem"] = dt;
                        GridView1.FooterRow.Cells[6].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["BuyItem"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[6].Text = "Total Amount ";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                }
               // Label1.Text = GridView1.Rows.Count.ToString();
            }
            if (GridView1.Rows.Count.ToString() == "0") //if no product present
            {
                LinkButton1.Enabled = false;
                LinkButton1.ForeColor = System.Drawing.Color.White;
                Button1.Enabled = false;
                Button1.Text = "Oops";
            }
            else
            {
                LinkButton1.Enabled = true;
                Button1.Enabled = true;
            }
            Orderid();
        }
    

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["BuyItem"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            return gtotal;
        }
        public void Orderid()
        {
            String alpha = "abcdefghijklmnopqrstuvwxyz";
            Random r = new Random();
            char[] myarray = new char[5];
            for(int i =0; i< 5; i++)
            {
                myarray[i] = alpha[(int)(3 * r.NextDouble())];

            }
            String Orderid;
            Orderid = "order_id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() 
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myarray) + DateTime.Now.Minute.ToString() 
                + DateTime.Now.Second.ToString();
            Session["Orderid"] = Orderid;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e) //delete one row
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["BuyItem"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                String qdata;
                String dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell Cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = Cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                TableCell prId = GridView1.Rows[e.RowIndex].Cells[1];
                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Delete top (1) from cartdetails where Id='" + prId.Text +"' and emailadd='" +Session["username"]+"' ",conn );
                        cmd.ExecuteNonQuery();
                    conn.Close();

                    break;

                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }
            Session["BuyItem"] = dt;
            Response.Redirect("AddToCart.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool istrue = false;
            DataTable dt = (DataTable)Session["BuyItem"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int Id = Convert.ToInt16(dt.Rows[i]["Id"]);
                int quantity = Convert.ToInt16(dt.Rows[i]["quantity"]);
                SqlDataAdapter sda = new SqlDataAdapter("Select quantity, productname from productdetails where Id='" + Id + "' ", conn);
                DataTable dtble = new DataTable();
                sda.Fill(dtble);
                int pquantity = Convert.ToInt16(dtble.Rows[0][0]);
                if (pquantity == 0)
                {
                    String pname = dtble.Rows[0][1].ToString();
                    String msg = "" + pname + "is not in stock";
                    Response.Write("<script>alert('" + msg + "');</script>");
                    istrue = false;
                }
                else
                {
                    istrue = true;
                }
            }
            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('your cart is empty; you cannot place an order');</script>");
            }
            else
            {
                if (istrue == true)
                {
                    Response.Redirect("placeorder.aspx");
                }
            }
        }
        public void clearcart()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Delete from cartdetails where emailadd='" + Session["username"] + "' ", conn);
            conn.Close();
            Response.Redirect("AddToCart.aspx");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["BuyItem"] = null;
            clearcart();
        }
    }
}
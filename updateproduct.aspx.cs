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
    public partial class updateproduct : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");
        int productid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showproduct();

            }
           

        }
        public void showproduct()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");

            SqlDataAdapter sda = new SqlDataAdapter("Select * from productdetails", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;
            showproduct();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            showproduct();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            int index = e.NewEditIndex;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];
            Label productID =(Label)row.FindControl("Label1");
            productid = int.Parse(productID.Text.ToString());
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");

            SqlDataAdapter sda =new SqlDataAdapter("Select * from productdetails where Id='" + productid + "' ",conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = productid;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];
            FileUpload fu = (FileUpload)row.FindControl("FileUpload1");
            if (fu.HasFile)
            {
                Label productID =(Label)row.FindControl("Label1");
                TextBox pname = (TextBox)row.FindControl("TextBox1");
                TextBox Brand = (TextBox)row.FindControl("TextBox2");
                TextBox price = (TextBox)row.FindControl("TextBox3");
                TextBox quantity = (TextBox)row.FindControl("TextBox4");
                TextBox category = (TextBox)row.FindControl("TextBox5");

                fu.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(fu.FileName));
                String pimage = "image/" + Path.GetFileName(fu.FileName);
               
                SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("Update productdetails set productname='"+pname.Text+ "', Brand='" + Brand.Text + "', Image='" +pimage+"',category='" + category.Text + "',price='" + price.Text + "',quantity='" + quantity.Text + "' where Id='"+productID.Text+"' ",conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                GridView1.EditIndex = -1;
                Response.Write("<script>alert('product update successfully');</script>");
                showproduct();
            }
            else
            {

                Response.Write("<script>alert('please select product image');</script>");

            }
        }
    }
}
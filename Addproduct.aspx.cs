using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
namespace Online_Stationery_Shop
{
    public partial class Addproduct : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-6VA3HCR;Initial Catalog=stationeryshop;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                conn.Open();
                string FPath = Server.MapPath("image/");
                string ext = Path.GetExtension(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(FPath + FileUpload1.FileName);
                string img = "image/" + FileUpload1.FileName;

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into productdetails values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + img + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
                cmd.ExecuteNonQuery();
                Label7.Text = "Product uploaded succesfully";
          
        }

        }
    }
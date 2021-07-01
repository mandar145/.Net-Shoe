using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace Shopping_Shoes.admin
{
    public partial class adminAddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-0FG9GI8Q\SQLEXPRESS;Initial Catalog=Shoe;Integrated Security=True");
        string b;
        protected void Page_Load(object sender, EventArgs e)
        { 
        
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            { 
                FileUpload1.SaveAs( Request.PhysicalApplicationPath+ "./uploads/" + FileUpload1.FileName.ToString());
                b = "/uploads/" + FileUpload1.FileName.ToString();
                lb1.Text = "Data Uploaded";
                lb1.ForeColor = System.Drawing.Color.Green;
                lb1.BackColor = System.Drawing.Color.Black;
            }
            else
            {
                lb1.Text = "Please Select File";
                lb1.ForeColor = System.Drawing.Color.Red;
            }

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [dbo].[user_product] VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + b.ToString()+ "')";
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text="";TextBox2.Text="";TextBox3.Text="";TextBox4.Text="";
            

            



       
        }
    }
}
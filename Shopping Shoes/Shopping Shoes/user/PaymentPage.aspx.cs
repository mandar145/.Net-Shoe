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



namespace Shopping_Shoes.user
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Order = Session["Orderid"].ToString();
            Label1.Text = Order;
            showgrid(Label1.Text); 

        }
    
        public void showgrid(string orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            
            dt.Columns.Add("orderdate");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("price");
            dt.Columns.Add("quantity");
            dt.Columns.Add("totalprice");

            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-0FG9GI8Q\SQLEXPRESS;Initial Catalog=Shoe;Integrated Security=True");

            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Order] where order_id= '" +Label1.Text +"' ");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while(i< totalrows)
            {
                dr = dt.NewRow();
                
                dr["orderdate"] = ds.Tables[0].Rows[i]["orderdate"].ToString();
                dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
                dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;


            }

            Gridview1.DataSource = dt;
            Gridview1.DataBind();
            labletotal.Text = grandtotal.ToString();
           







        }

    

          }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Shopping_Shoes.user
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        private string address;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["buyitems"] == null)
                {
                    Button1.Visible = false;
                }
                else
                {
                    Button1.Visible = true;
                }

                /* For But Button */
                if (!IsPostBack)
                {
                    PH5.Visible = false;
                  //  PH1.Visible = false;
                    PH4.Visible = false;

                }

                /* For But Button */


                //Adding product to Gridview
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pprice");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");



                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-0FG9GI8Q\SQLEXPRESS;Initial Catalog=Shoe;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [dbo].[user_product] where id=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["product_img"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["product_price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;


                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("ShoppingCart.aspx");
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(@"Data Source=LAPTOP-0FG9GI8Q\SQLEXPRESS;Initial Catalog=Shoe;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [dbo].[user_product] where id=" + Request.QueryString["id"], scon);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["product_img"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["product_price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("ShoppingCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }
                }
            }
            string OrderDate = DateTime.Now.ToShortDateString();
             Session["Orderdate"] = OrderDate;
             orderid(); 

            int grandtotal()
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                int nrow = dt.Rows.Count;
                int i = 0;
                int totalprice = 0;
                while (i < nrow)
                {
                    totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["pprice"].ToString());

                    i = i + 1;

                }
                return totalprice;
            }

            void orderid()
            {
                String alpha = "abCdefghIjklmNopqrStuvwXyz123456789";
                Random r = new Random();
                char[] myArray = new char[5];
                for (int i = 0; i < 5; i++)
                {
                    myArray[i] = alpha[(int)(35 * r.NextDouble())];

                }
                String order_id;
                order_id = "Order_id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                    + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                Session["Orderid"] = order_id;
            }



    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Item Has Been Deleted From Shopping Cart
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("ShoppingCart.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order');</script>");

            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    SqlConnection scon = new SqlConnection(@"Data Source=LAPTOP-0FG9GI8Q\SQLEXPRESS;Initial Catalog=Shoe;Integrated Security=True");
                    scon.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Order] (order_id,productid,productname,price,quantity,orderdate) values('" + Session["Orderid"] + "'," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"] + "," + dt.Rows[i]["pquantity"] + ",'" + Session["Orderdate"] + "')", scon);


                    cmd.ExecuteNonQuery();
                    scon.Close();
                }
                if (GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order');</script>");

                }
                else
                {
                    Response.Write("<script>alert('Order Placed Sucessflly now payment section');</script>");
                    Response.Redirect("PaymentPage.aspx");
                                 
                }
            }
            /*
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection scon = new SqlConnection(@"Data Source=LAPTOP-0FG9GI8Q\SQLEXPRESS;Initial Catalog=Shoe;Integrated Security=True");
                scon.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Order] (order_id,productid,productname,price,quantity,orderdate) values('" + Session["Orderid"] + "'," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"] + "," + dt.Rows[i]["pquantity"] + ",'" + Session["Orderdate"] + "')", scon);


                cmd.ExecuteNonQuery();
                scon.Close();
            }
            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order');</script>");

            }
            else
            {
                
                Response.Redirect("PaymentPage.aspx");
             
            }
            */


        }

        /* Payment Gateway Code */


    /*    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (PH1.Visible)
            {
                PH1.Visible = false;
            }
            else
            {
                PH1.Visible = true;
            }

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (PH1.Visible)
            {
                PH1.Visible = false;
            }
            else
            {
                PH1.Visible = true;
            }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (PH1.Visible)
            {
                PH1.Visible = false;
            }
            else
            {
                PH1.Visible = true;
            }
        }   */

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            if (PH4.Visible)
            {
                PH4.Visible = false;
            }
            else
            {
                PH4.Visible = true;

            }


        }

       // protected void P1B1_Click(object sender, EventArgs e)
       // {

            //       Method1
            //       SqlConnection scon = new SqlConnection(@"Data Source=LAPTOP-0FG9GI8Q\SQLEXPRESS;Initial Catalog=Shoe;Integrated Security=True");
            //       scon.Open();
            //       SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[card_details]
            //      ([card_name]
            //      ,[card_number]
            //      ,[card_date]
            //      ,[card_cvv])
            //VALUES ('"+ TextBox1.Text +"','"+TextBox2.Text+ "','"+TextBox3.Text+ "','"+TextBox4.Text+"' )", scon);
            //       cmd.ExecuteNonQuery();
            //       scon.Close();


            //SqlConnection conn = new SqlConnection(@"Data Source = LAPTOP - 0FG9GI8Q\SQLEXPRESS; Initial Catalog = Shoe; Integrated Security = True");
            //conn.Open();
            //string strSql = "INSERT INTO [dbo].[card_details](card_name,card_number,card_date,card_cvv) values(@cname,@cnumber,@cdate,@ccvv)";
            //SqlCommand cmd = new SqlCommand(strSql, conn);
            //cmd.Parameters.AddWithValue("@cname", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@cnumber", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@cdate", TextBox3.Text);
            //cmd.Parameters.AddWithValue("@ccvv", TextBox4.Text);
            //cmd.ExecuteNonQuery();
            //conn.Close();
         //   Response.Redirect("PaymentPage.aspx");

                /*   experiment   */
       // }

        protected void P4B1_Click(object sender, EventArgs e)
        {
         
            Session["address"] = TextBox5.Text.ToString();
            Response.Redirect("PaymentPage.aspx");
       
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentPage.aspx");

        }



        /* Payment Gateway Close */


    }
    }



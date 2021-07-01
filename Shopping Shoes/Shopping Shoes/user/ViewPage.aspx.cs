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
    public partial class ViewPage : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
        }

        protected void Unnamed1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "cart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("ShoppingCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity="+ list.SelectedItem.ToString());    }
        }
    }
}
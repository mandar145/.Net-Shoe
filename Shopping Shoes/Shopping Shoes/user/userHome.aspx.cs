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
    public partial class userHome : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
         


        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {
                Response.Redirect("ViewPage.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}
<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Shopping_Shoes.user.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   
  
        <asp:Label Text="All Products" Font-Size="XX-Large" BackColor="Turquoise" BorderStyle="Groove" BorderColor="Silver" BorderWidth="5px" runat="server" />
        <br/>
    <br />
    <br />
    <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table style="margin-right:15px;border-style:groove;margin-left:10px;margin-top:10px; text-align:center;margin-bottom:5px;border-width:5px;border-color:silver;  ">

                    <tr>
                            <td>
                                <h4><%# Eval("product_name") %> </h4>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; height: 250px;">
                          
                         <asp:Image ImageUrl='<%# Eval("product_img") %>' runat="server" />
                                    </td>
                        </tr>
                        <tr>
                            <td>
                                <h4><%# Eval("product_desc") %> </h4>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h4>Rs.<%# Eval("product_price") %></h4>
                            </td>
                        </tr>
                    <tr>
                        <td>  
                            <asp:Button Text="View" CommandArgument='<%# Eval("id") %>' CommandName="view"  runat="server" />
                        </td>
                    </tr>
                   
                </table>
        
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoeConnectionString %>" SelectCommand="SELECT * FROM [user_product]"></asp:SqlDataSource>



    
  

       <div class="footer">
        <h5>| Home | About| FAQ |</h5>
        <h5>Copyright &#169; 2027 ShopperBase </h5>
        </div>  

  

</asp:Content>

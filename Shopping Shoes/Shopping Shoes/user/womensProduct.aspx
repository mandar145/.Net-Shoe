<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="womensProduct.aspx.cs" Inherits="Shopping_Shoes.user.womensProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

      <asp:Label Text="Women's Cateogory" Font-Size="XX-Large" BackColor="silver" BorderStyle="Groove" BorderColor="Silver" BorderWidth="1px" runat="server" />
        <br/>
    <br />
    <br />
    <br />

    <asp:DataList runat="server" BackColor="#FFCCFF" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" OnItemCommand="Unnamed2_ItemCommand">
        <ItemTemplate>  
            <table style="margin-right:15px;margin-top:10px; border-style:groove;margin-left:10px;text-align:center;margin-bottom:5px;border-width:5px;border-color:silver;  ">
                   <tr>
                            <td>
                                <h4><%# Eval("product_name") %> </h4>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; height: 250px;">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("product_img") %>' Height="200px" Width="200px" />
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
                                 <div class="product_size">
              Size: <asp:DropDownList ID="DropdownList1" runat="server">
                                    <asp:ListItem Text="1" Selected="True" />
                                    <asp:ListItem Text="2" />
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
            </div>
                            </td>
                        </tr>
                
                               <tr>
                        <td>  
                            <asp:Button Text="View" CommandArgument='<%# Eval("id") %>' CommandName="view"  runat="server" />
                        <br />
                            <asp:Button Text="Buy" runat="server" Width="80px" Height="30px" CommandArgument='<%# Eval("id") %>' CommandName="cart" />
                        </td>
                        </tr>
             

            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoeConnectionString %>" SelectCommand="SELECT * FROM [dbo].[user_product] WHERE product_cat LIKE '%Womens';">
        <SelectParameters>
            <asp:Parameter DefaultValue="Womens" Name="product_cat" Type="String" />
        </SelectParameters>
      </asp:SqlDataSource>
   <div class="footer">
        <h5>| Home | About| FAQ |</h5>
        <h5>Copyright &#169; 2027 ShopperBase </h5>
        </div> 

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="userHome.aspx.cs" Inherits="Shopping_Shoes.user.userHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   
    <%--<div class="aside"> <!--start-->--%>
    
                        <div class="design">
                          <div class="slider">
                            <div class="item"><a href="#"><img src="../Slides/shoe4.jpg" alt="shoe"></a> </div>
                              <div class="item"><a href="#"><img src="../Slides/shoe2.jpg" alt="shoe"></a> </div>
                              <div class="item"><a href="#"><img src="../Slides/shoe6.jpg" alt="shoe"></a> </div>                             
                          </div> <!--Slider end-->
                        </div>  <!--design end-->
 
    
          <%-- Main Body --%>
        
            <hr>
            <h1>New products</h1>
            <!-- Products  Row 1-->
 
            <asp:DataList ID="DataList1" runat="server" BorderStyle="None" CellSpacing="-1" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#333333" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    <table style="text-align: center; border-style: groove; margin-right:10px;margin-left:10px; margin-bottom: 5px; border-width: 5px;">
                        <tr>
                            <td>
                                <h4><%# Eval("product_name") %> </h4>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 250px; height: 250px;">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("product_img") %>' />
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
                            <asp:Button Text="View" CommandArgument='<%# Eval("id") %>' CommandName="view"  runat="server" /> <br />
                            <asp:Button Text="Buy" runat="server" Width="80px" Height="30px" CommandArgument='<%# Eval("id") %>' CommandName="cart" />
                        </td>
                    </tr>


                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoeConnectionString %>" SelectCommand="SELECT * FROM [dbo].[user_product] WHERE product_cat LIKE 'Home%';">
        <SelectParameters>
            <asp:Parameter DefaultValue="Home" Name="product_cat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

       <!--Main Close-->
       <div class="footer">
        <h5>| Home | About| FAQ |</h5>
        <h5>Copyright &#169; 2027 ShopperBase </h5>
        </div>  


       
 <%--</div>--%>
   
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="ViewPage.aspx.cs" Inherits="Shopping_Shoes.user.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    
 
<h1>View Product</h1>
    <br />
    <br />
   
       <asp:DataList runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Unnamed1_ItemCommand">
           <ItemTemplate>
<table style="margin-left:5px;">
    <tr>
        <td style="border:solid;text-align:center; height:400px;width:350px;border-style:groove;border-color:silver;border-width:2px;">  <img src='<%# Eval("product_img") %>' style="border-style:groove;border-color:silver;border-width:1px;" /> </td>
        <td style="width:250px;text-align:center; border:solid;border-style:groove;border-color:silver;border-width:2px;">
          <div class="product_name">
              <h3> <%# Eval("product_name") %> </h3>
          </div>
            <hr style="width:100px;border-color:silver;border-width:1px;" />
            <div class="product_desc">
             <h3> <%# Eval("product_desc") %>  </h3>
                </div>
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
          
            <div class="product_price">
             <h5>Rs.<%# Eval("product_price") %></h5>
                </div>
  
            <asp:Button Text="Buy" runat="server" Width="80px" Height="30px" CommandArgument='<%# Eval("id") %>' CommandName="cart" />
        </td>
    </tr>    
</table>         

           </ItemTemplate>
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoeConnectionString %>" SelectCommand="SELECT * FROM [user_product] WHERE ([id] = @id)">
           <SelectParameters>
               <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
           </SelectParameters>
       </asp:SqlDataSource>
    <hr />

 
</asp:Content>

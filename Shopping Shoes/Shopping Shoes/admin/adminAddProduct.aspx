<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminAddProduct.aspx.cs" Inherits="Shopping_Shoes.admin.adminAddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">


    <h1>Add Products</h1>

<table class="add-product">
    
    <tr>
        <td><h3>Add Product Name</h3></td>
        <td> <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox> </td>
    </tr>
     <tr>
        <td><h3>Add Product Cateogory</h3></td>
        <td>   <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>  </td>
    </tr>
  
   
     <tr>
        <td><h3>Add Product Price</h3></td>
        <td> <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>  </td>
    </tr>
    <tr>
        <td> <h3>Add Product Description</h3></td>
        <td> <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox></td>
    </tr>
     <tr>
        <td><h3>Add Product Image</h3></td>
         <td>  <asp:FileUpload ID="FileUpload1" runat="server" />   </td>
    </tr>
</table>
<asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    <asp:Label runat="server" ID="lb1"></asp:Label>
    

</asp:Content>

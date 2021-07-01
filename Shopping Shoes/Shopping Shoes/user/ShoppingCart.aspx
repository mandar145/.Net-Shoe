<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Shopping_Shoes.user.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Shoe</title>
    <!-- Jqueery -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" />
    <!-- Jquerry -->
    <!-- Css Code -->
    <link href="../newstylesheet.css" rel="stylesheet" />
    <link href="../productstylesheet.css" rel="stylesheet" />
    <%-- Slider files --%>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" />

    <!-- Bootstrap code -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: solid 1px;
        }

        .auto-style2 {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            background-color: silver;
        }

        .auto-style3 {
            width: 100%;
        }

        .auto-style4 {
            width: 242px;
            height: 309px;
        }

        .auto-style11 {
            height: 50px;
            width: 126px;
        }

        .auto-style12 {
            width: 100%;
            height: 402px;
        }

        .auto-style15 {
            height: 152px;
            border: groove 1px;
        }

        .auto-style16 {
            height: 309px;
        }

        .auto-style17 {
            width: 152px;
            font-family: 'Times New Roman';
            font-size: x-large;
            height: 50px;
        }

        .auto-style18 {
            width: 152px;
            font-family: 'Times New Roman';
            font-size: x-large;
            height: 50px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form  runat="server">

  
   
        <%--<div class="main">--%>
        <!-- Menu  -->
        <%--<div class="main">--%>
        <!-- Menu  -->
        <div class="head">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <img src="logo2.png" class="img-thumbnail" style="width: 100px;" alt="logo" />
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="userHome.aspx">Home</a></li>
                        <li><a href="Products.aspx">Product</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    </ul>
                </div>
            </nav>
        </div>

        <div class="main">
            <div align="center">
                <table style="background-color: silver;">
                    <td style="padding-right: 10px;">
                        <h1>Shopping Cart</h1>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/IMAGES/cart.png" Style="width: 40px; height: 45px;" />
                    </td>
                </table>
                <asp:Label ID="l2" Text="You Have Selected Product:" runat="server" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="Silver" BorderStyle="Groove" BorderWidth="1px" Height="300px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="S.No">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pid" HeaderText="Product ID">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                            <ItemStyle HorizontalAlign="Center" Height="300px" Width="300px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="pname" HeaderText="Product Name">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pprice" HeaderText="Price">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pquantity" HeaderText="Quantity" SortExpression="pquantity" />
                        <asp:BoundField DataField="ptotalprice" HeaderText="Total Price" SortExpression="ptotalprice" />
                        <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:Button ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoeConnectionString %>" SelectCommand="SELECT * FROM [user_product] WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
            </div>
        </div>

    </form>
</body>
</html>

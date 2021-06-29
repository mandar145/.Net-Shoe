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
                <%-- PAYMENT --%>
              
                         <asp:PlaceHolder ID="PH5" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td colspan="2" class="auto-style2">Payment Gateway</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style17"><strong>Credit Card</strong></td>
                                        <td class="auto-style11">
                        <%--                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/IMAGES/credit-card.png" Width="50px" OnClick="ImageButton1_Click" />--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style17"><strong>Debit Card</strong></td>
                                        <td class="auto-style11">
                        <%--                    <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="~/IMAGES/credit-card.png" Width="50px" OnClick="ImageButton2_Click" />--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">Net Banking</td>
                                        <td class="auto-style11">
                                       <%--     <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" ImageUrl="~/IMAGES/bank-building.png" Width="50px" OnClick="ImageButton3_Click" />--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18">COD</td>
                                        <td class="auto-style11">
                                            <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" ImageUrl="~/IMAGES/cod.png" Width="50px" OnClick="ImageButton4_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style16">
                                <table class="auto-style12">
                                    <tr>
                                        <td class="auto-style15">
                                            <%-- Credit Card --%>
                                          <%--  <asp:PlaceHolder ID="PH1" runat="server">--%>
                                                <asp:Label ID="Label1" Text="Card Holder's Name" runat="server" Font-Size="Large" />
                                                <br />
                                                <br />
                                                <asp:TextBox ID="TextBox1" runat="server" />
                                                &nbsp; &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Empty" Font-Bold="False" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="card holder's name must be in characters" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="Textbox1" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label2" Text="Card Number" runat="server" Font-Size="Large" />
                                                <br />
                                                <br />
                                                <asp:TextBox ID="TextBox2" runat="server" />
                                                &nbsp; &nbsp;  
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Empty" Font-Bold="False" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Card Number Must be 16 Digits" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="Textbox2" ValidationExpression="[0-9]{16}"></asp:RegularExpressionValidator>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label3" Text="Expiry Date" Font-Bold="true" runat="server" /><br />
                                                <br />
                                                <asp:TextBox ID="TextBox3" runat="server" placeholder="MM/YY eg:(06/1999)" />
                                                &nbsp; &nbsp;    
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field Empty" Font-Bold="False" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Date" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="Textbox3" ValidationExpression="(0[1-9]|1[012])[/]\d{4}"></asp:RegularExpressionValidator>

                                                <br />
                                                <br />
                                                <asp:Label Text="CVV" Font-Bold="true" ID="P1L3" runat="server" />
                                                <br />
                                                <br />
                                                <asp:TextBox ID="TextBox4" runat="server" />
                                                &nbsp; &nbsp;  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field Empty" Font-Bold="False" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Cvv must be 3 digits" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="Textbox4" ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
                                                <br />
                                                <br />
                                            <asp:Button ID="Button2" runat="server" Text="Proceed" OnClick="Button2_Click" />
                                            <%-- </asp:PlaceHolder>--%>
                                            <%-- Debit Card --%>
                                          
                                            <%-- COD --%>
                                           <asp:PlaceHolder ID="PH4" runat="server">
                                                <br /> <br />
                                                <asp:Label ID="Label4" Text="Adress" runat="server" Font-Size="Large" />
                                                <br />
                                                <br />

                                                <asp:TextBox ID="TextBox5" runat="server" placeholder="Address" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field Empty" Font-Bold="False" Font-Names="Bell MT" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                                <br />
                                                <br />
                                                <asp:Button ID="P4B1" Text="Proceed" runat="server" OnClick="P4B1_Click"  />

                                           </asp:PlaceHolder>

                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    </asp:PlaceHolder>
                 


                <%-- PAYMENT END --%>
            </div>
        </div>

    </form>
</body>
</html>

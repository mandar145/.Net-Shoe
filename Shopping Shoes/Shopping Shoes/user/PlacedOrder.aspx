﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlacedOrder.aspx.cs" Inherits="Shopping_Shoes.user.PlacedOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="../newstylesheet.css" rel="stylesheet" />
    <link href="../productstylesheet.css" rel="stylesheet" />
<style>
   html,body{
       margin:0px;
       padding:0px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
          
      
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">  <img src="logo2.png" class="img-thumbnail" style="width: 100px;" alt="logo" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item ">
        <a class="nav-link" href="userHome.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Products.aspx">Product</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="#">About Us </a>
      </li>
          <li class="nav-item">
        <a class="nav-link" href="#">Contact Us </a>
      </li>
    </ul>
  =   <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
      &nbsp;                 
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    </ul>
  </div>
</nav>


        <div class="container-fluid">
            <h1>Placed Order Details:</h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="order_id" HeaderText="Order ID" />
                    <asp:BoundField DataField="productid" HeaderText="Product ID" />
                    <asp:BoundField DataField="productname" HeaderText="Product Name" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="Order Date" HeaderText="date" />
                    <asp:BoundField DataField="Total Price" HeaderText="totalprice" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>

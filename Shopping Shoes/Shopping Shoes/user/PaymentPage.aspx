<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="Shopping_Shoes.user.PaymentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    
    <form  runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="Black" BorderStyle="Solid" style="text-decoration:none;" BorderWidth="1px" NavigateUrl="~/user/userHome.aspx">Return To Homepage &#8592;</asp:HyperLink>      
        <table align="center" style="width:600px;height:500px;display:flex; justify-content:space-evenly;">
            <tr>
                <td style="width:600px;height:100px;border:solid;">
                    <h1>Electronic Bill</h1>
                </td>
            </tr>
            <tr>
                <td style="height:50px;border:solid;width:200px;">
                    <h4>Order Id:</h4>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="border:solid;width:200px;">
                    <h4>Order date</h4>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
             <td style="border:solid;width:200px;">
                    <h4>Address:</h4>
                    <asp:Label ID="Label7" runat="server" Text="Bhiwandi Shop 102 Outlet No8 Street 14."></asp:Label>
                </td>
                </tr>
            <tr>
                <td style="border:solid;width:100%;">
              
                    <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" Width="600px">
                        <Columns>
                            <asp:BoundField DataField="orderdate" HeaderText="Order Date">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productid" HeaderText="Product ID">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productname" HeaderText="Product Name">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>

                    </asp:GridView>   
                
                </td>
              
            </tr>
            <tr>
                <td style="height:50px;border:solid;">
                <h1>Grand Total:</h1>
                    <asp:Label ID="labletotal" Text="Lable1" runat="server">$</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:100%;border:solid;height:20px;">
                    <h4>Thankyou for shopping</h4>
                </td>
            </tr>
        </table>

    </form>
    
</body>
</html>

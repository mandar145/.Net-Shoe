<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminProductView.aspx.cs" Inherits="Shopping_Shoes.admin.adminProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <h1>Admin added Products</h1>

  

            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BorderColor="#666666" BorderStyle="Groove" BorderWidth="5px" RepeatColumns="5" RepeatDirection="Horizontal" style="margin-left: 7px" Width="1319px">
                <ItemTemplate>
               <header></header>
                    <asp:Table ID="Table1"  runat="server"  BorderColor="#666666" BorderStyle="Groove" BorderWidth="1px" Height="250px" Width="250px">

                        <asp:TableRow>
                            <asp:TableCell style="text-align:center;font-family:'Times New Roman';font-size:medium; ">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                          
                        <asp:TableRow>
                            <asp:TableCell style="text-align:center; width:250px; height:250px;font-family:'Times New Roman';font-size:medium; ">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("product_img") %>' />
                            </asp:TableCell>
                        </asp:TableRow>

                         <asp:TableRow>
                            <asp:TableCell style="text-align:center;font-family:'Times New Roman';font-size:medium; ">
                                <asp:Label ID="Label2" runat="server" Text="Cateogory: "></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("product_cat") %>'></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                         <asp:TableRow>
                            <asp:TableCell style="text-align:center;font-family:'Times New Roman';font-size:medium; ">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("product_desc") %>'></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                         <asp:TableRow>
                            <asp:TableCell style="text-align:center;font-family:'Times New Roman';font-size:medium; ">
                                <asp:Label ID="Label5" runat="server" Text="Rs. "></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("product_price") %>'></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <footer></footer>
                </ItemTemplate>
            </asp:DataList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoeConnectionString %>" SelectCommand="SELECT [product_name], [product_cat], [product_price], [product_desc], [product_img] FROM [user_product]"></asp:SqlDataSource>
    
 </asp:Content>

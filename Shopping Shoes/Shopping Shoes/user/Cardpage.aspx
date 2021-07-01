<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cardpage.aspx.cs" Inherits="Shopping_Shoes.user.Cardpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Gateway</title>
    <%-- Bootstrap cdn --%>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="text-align: center; border: solid; font-family: 'Times New Roman', Times, serif;width:600px;background-color:rgb(207 197 197 / 0.87);">
            <h1>Card Details</h1>
            <hr style="border-color: black;" />
            <div class="row" style="display: flex; align-items: center;">
                <div class="col-sm" style="height:50px; display: flex; align-items: center; justify-content: center;">
                    <h4>Debit/Credit Card</h4>
                </div>
                <div class="col-sm" style="padding: 0px;">
                    <asp:Image ImageUrl="../IMAGES/cardlogo.jpg" Width="400px" Height="80px" runat="server" />
                </div>
            </div>
            <%--- row closed ---%>
                <hr style="border-color: black;" />
                <div class="row" >
                    <div class="col-sm" style="height:50px; display: flex; align-items: center; justify-content: center;">
                        <input type="text" class="form-control" runat="server" id="Textbox1"  placeholder="Card Holder's Name" style="height:40px;text-align:center;border:solid #000 1px; width:300px;" />
                        </div>
                </div>
                <%--- row closed ---%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Empty Input Field" Font-Bold="True" ForeColor="Red" ControlToValidate="Textbox1"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Alphabets A-Z and a-z only"  ControlToValidate="Textbox1" ValidationExpression="([A-Za-z])+( [A-Za-z]+)*" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
          <hr style="border-color: black;" />
            <div class="row">
                    <div class="col-sm" style="display: flex;height:50px; align-items: center; justify-content: center;">
                        <input type="text" class="form-control" runat="server" id="Textbox2"  placeholder="Card Number" style="height:40px;border:solid #000 1px; text-align:center; width:300px;" />
                    </div>           
                </div>
                <%--- row closed ---%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Empty Input Field" Font-Bold="True" ForeColor="Red" ControlToValidate="Textbox2"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter valid Card Number"  ControlToValidate="Textbox2" ValidationExpression="\d{16}" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
            <hr style="border-color: black;" />
         <div class="row">
                    <div class="col-sm" style="display: flex;height:50px; align-items: center; justify-content: center;">
                        <input type="text" class="form-control" runat="server" id="Textbox3"  placeholder="Expiry Date (dd/yy)" style="height:40px;text-align:center;border:solid #000 1px;  width:170px;" />
                    </div>
                          <div class="col-sm" style="display: flex;height:50px; align-items: center; justify-content: center;">
                        <input type="password" class="form-control" runat="server" id="Textbox4"  placeholder="CVV" style="height:40px;border:solid #000 1px; text-align:center; width:100px;" />
                          </div>               
                </div>
                <%--- row closed ---%>    
         <div class="row">
                    <div class="col-sm" style="text-align:center;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Empty Input Field" Font-Bold="True" ForeColor="Red" ControlToValidate="Textbox3"></asp:RequiredFieldValidator>
                          <br />
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*Enter valid Expiry Date"  ControlToValidate="Textbox3" ValidationExpression="((0[1-9]|1[12])/(09|[1-9][0-9]))" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                          <div class="col-sm" style="text-align:center;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Empty Input Field" Font-Bold="True" ForeColor="Red" ControlToValidate="Textbox4"></asp:RequiredFieldValidator>
                            <br />
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*Enter valid CVV"  ControlToValidate="Textbox4" ValidationExpression="\d{3}" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                          </div>               
                </div>
                <%--- row closed ---%>       
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary"  Text="Submit" OnClick="Button1_Click"   />
        <br />
            
        
        
        
        
        </div>
            <%---- container closed -------%>
    </form>
</body>
</html>

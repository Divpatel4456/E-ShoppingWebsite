<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="MyEShoppingWebsite.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <meta charset="UTF-8"/>
    <meta name="viewport",content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
 <div>
  <div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
      <div class ="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class ="sr-only">Toggle Navigation</span>
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
              </button>
          
          <a class ="navbar-brand" href="Default.aspx" style="color:cornflowerblue"><span><img src="Icons/secure.png" alt="MyShopping" height="30"/></span>MyEShopping</a>
  </div>
      <div class ="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
              <li><a href ="Default.aspx">Home</a></li>
              <li><a href ="About.aspx">About</a></li>
              <li><a href ="#">Contact US</a></li>
              <%---<li><a href ="#">Blog-</a></li>---%>
              <li class ="dropdown">
                  <a href ="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                      <li class="dropdown-header">Men</li>
                      <li role="separator" class="divider"></li>
                      <li><a href ="#">Shirts</a></li>
                      <li><a href ="#">Jens</a></li>
                      <li><a href ="#">Denims</a></li>
                      <li role="separator" class="divider"></li>
                      <li class="dropdown-header">Women</li>
                      <li role="separator" class="divider"></li>
                      <li><a href ="#">Tops</a></li>
                      <li><a href ="#">T-Shirts</a></li>
                      <li><a href ="#">Jens</a></li>   
                  </ul>
              </li>   
           <li><a href="SignIn.aspx">Sign In</a></li>
          </ul>
      </div>
     </div>
   </div>

     
</div>
        <br />
        <br />
        <div class="container">
            <div class="form-horizontal">
                <hr />
                <h4>Recover Password</h4>
                <hr />
                <h5> Please Enter Your Email Address, we will send you the recovery link for your password!!</h5>

                <div class="form-group">
                    <asp:Label ID="lblEmail" Cssclass="col-md-2 control-label" runat="server" Text="Your Email Address"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" Cssclass="text-danger" runat ="server" ErrorMessage="Enter Your Email" ForeColor="Red" ControlToValidate="txtEmailId"></asp:RequiredFieldValidator>
                    </div>
                 </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnResetpass" CssClass="btn btn-default" runat="server" Text="Send" OnClick="btnResetpass_Click" />
                            <asp:Label ID="lblRestPassMsg" CssClass="text-success" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                </div>
            </div>
            </div>
    </form>

          <!---Footer Contents start here--->
<hr />
<footer>
    <div class="container">
        <p class ="pull-right"><a href ="#">Back to top</a></p>
        <p>&copy; 2023 E-shopping.in &middot;<a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Product</a></p>
    </div>
</footer>
     <!---Footer Contents End--->

</body>
</html>

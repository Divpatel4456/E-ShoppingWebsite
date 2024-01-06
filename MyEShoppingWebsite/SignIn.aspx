<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MyEShoppingWebsite.SignIn"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
      <meta charset="UTF-8" />
      <meta name="viewport",content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta http-equiv="X-UA-Compatible" content="IE-edge" />
      <link href="css/Custome.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <style>
    body {
        background-image: url('https://img.freepik.com/premium-photo/shopping-sale-concept_136595-1804.jpg?w=996');
background-size: cover; /* Ensures the image covers the entire background */
            
        
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <div>
                <div class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color:lightgrey">
                <div class="container">
                    <div class ="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                              <span class ="sr-only">Toggle Navigation</span>
                              <span class ="icon-bar"></span>
                              <span class ="icon-bar"></span>
                              <span class ="icon-bar"></span>
                            </button>
                        
                        <a class ="navbar-brand" href ="Default.aspx" style="color:cornflowerblue"><span><img src="Icons/secure.png" alt="MyShopping" height="30"/></span>MyEShopping</a>
                </div>
                    <div class ="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right ">
                            <li><a href ="Default.aspx">Home</a></li>
                            <li><a href ="About.aspx">About</a></li>
                             <%-- <li><a href ="#">Contact US</a></li>--%>
                            <%-- <li ><a href ="#">Blog-</a> </li>--%>
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
                                    <li><a href ="WomanTop.aspx">Tops</a></li>
                                    <li><a href ="#">T-Shirts</a></li>
                                    <li><a href ="#">Jens</a></li>   
                                </ul>
                            </li>
                            <li><a href ="SignUp.aspx">SignUp</a></li>
                             <li class="active"><a href="SignIn.aspx">SignIn</a></li>
                        </ul>
                    </div>
                   </div>
</div>
                        </div>
            </div>
            <br />
            <br />
            <br />
        <br />
                    <!----singin form start---->
      
                    <div class="container" style="margin-top: 60px;">
    <div class="form-container-small" text-align: center;">
                        
                        <div class ="form-horizontal">
                            
                            <h2 style="color:deeppink;" ><b><center>Sign In</center></b></h2>
                            <br />
                           
                            <div class="form-group" style="font-weight: bold;">
                                <asp:Label ID="Label" CssClass ="col-md-5 control-label" runat="server" Text="Username"  ></asp:Label>
                                <div class="col-md-3">   
                                    <div class="input-group">
                                         <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>
                                   <span class="input-group-addon">
                                   <span class="glyphicon glyphicon-user"></span>
                                 </span>
                                 </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger" ErrorMessage="Enter Your Username" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group" style="font-weight: bold;">
                                 <asp:Label ID="Label2" CssClass ="col-md-5 control-label" runat="server" Text="Password"></asp:Label>
                                  <div class="col-md-3">
                                      <div class="input-group">
                                      <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-lock"></span>
                                            </span>

                                      </div>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Please enter valid Password" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                                     
                                </div>
                           

                            <div class="form-group">
                                 <div class="col-md-5"></div>
                                 <div class="col-md-3">
                                     <asp:CheckBox ID="CheckBox1" runat="server" />
                                     <asp:Label ID="Label3" CssClass ="control-label" runat="server" Text="Remember Me"></asp:Label>
                                 </div>
                           </div>
                                

                            <div class="form-group"> 
                                <div class="col-md-5"></div>
                                <div class="col-md-3">
                                    <asp:HyperLink ID="Hyforgotpass" runat="server" NavigateUrl="~/ForgotPassword.aspx" style="font:bold">Forgot Password?</asp:HyperLink>
                                 </div>
                            </div>       
                                 
                         <div class="form-group">
                            <div class="col-md-6"></div>
                            <div class="col-md-3">
                                <asp:Button ID="Btnlogin" CssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="Btnlogin_Click" />
                                </div>
                         </div>
                           <div class="form-group">
                            <div class="col-md-5"></div>
                            <div class="col-md-6">
                                <asp:Label ID="lblError" CssClass="text-danger" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                      
                      
                   <div class="form-group">
                      <div class="col-md-5"></div>
                      <div class="col-md-3">
                          <asp:Label ID="Label1" CssClass ="control-label" runat="server" Text="Don't have an account?"></asp:Label>
                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SignUp.aspx" >Sign Up</asp:HyperLink>
                   </div>
                 </div>
 </div></div>
        </div>
                            
   
                   </div>
                        

        <br />
                    
 <!----sigin form end------->
   <!---Footer Contents start here--->

 <footer>
     <div class="container">
         <p class ="pull-right "><a href ="SignIn.aspx">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
          <p class ="pull-right "><a href="AdminHomePage.aspx"> Admin Login  </a></p> 
         <p>&copy; 2023 E-shopping.in &middot;<a href="Default.aspx">Home</a>&middot; <a href="About.aspx">About</a>&middot; <a href="#">Contact</a>&middot; <a href="Products.aspx">Product</a></p>
     </div>

 </footer>
  <!---Footer Contents End--->
             
</form>
</body>
</html>

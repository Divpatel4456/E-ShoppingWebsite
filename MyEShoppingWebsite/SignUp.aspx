<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MyEShoppingWebsite.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUP</title>
    <meta charset="UTF-8" />
      <meta name="viewport",content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
      <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
      <link href="css/Custome.css" rel="stylesheet"/>

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
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
                        <ul class="nav navbar-nav navbar-right">
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
                                    <li><a href ="#">Tops</a></li>
                                    <li><a href ="#">T-Shirts</a></li>
                                    <li><a href ="#">Jens</a></li>   
                                </ul>
                            </li>
                            <li class="active"><a href="SignUp.aspx">SignUp</a></li>
                            <li><a href="SignIn.aspx">SignIn</a></li>
                        </ul>
                    </div>
                    </div>
                 </div>
         </div>
        <br />
        <br />
        <br />
        <br />
                    <!---SingUp page--->
         
                    <div class="container" style="margin-top: 60px; ">
                        <div class="form-container-small" text-align: center;">
                            
                            <div class ="form-horizontal" >
                           
                        <h2 style="color:deeppink;"><b><center>Sign Up </center></b></h2>
                        <br />
                         <div class="form-group" style="font-weight: bold;">
                        <label class="col-md-5 control-label" >UserName:</label>
                        <div class="col-md-3">
                          <div class="input-group">
                           <asp:TextBox ID="txtUname" runat="server" CssClass="form-control" placeholder="Enter Your Username" style="text-align: center;"></asp:TextBox>
                            <span class="input-group-addon">
                           <span class="glyphicon glyphicon-user"></span>
                             </span>
                            </div>
                        
                        </div>
                        </div>

                         <div class="form-group" style="font-weight: bold;">
                        <label class="col-md-5 control-label">Password:</label>
                        <div class="col-md-3">
                          <div class="input-group">
                           <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Your Password" style="text-align: center;"></asp:TextBox>
                            <span class="input-group-addon" onclick="togglePasswordVisibility()">
                           <span class="glyphicon glyphicon-eye-open"></span>
                             </span>
                            </div>
                        
                        </div>
                         </div>

                                
                        <div class="form-group" style="font-weight: bold;">
                       <label class="col-md-5 control-label">Confirm Password:</label>
                       <div class="col-md-3">
                           <div class="input-group">
                               <asp:TextBox ID="txtCpass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Your Confirm Password" style="text-align: center;"></asp:TextBox>
                               <span class="input-group-addon" onclick="togglePasswordVisibility()">
                                   <span class="glyphicon glyphicon-eye-open"></span>
                                 </span>
                               </div>   
                       </div>
                            </div>

                      <div class="form-group" style="font-weight: bold;">
                      <label class="col-md-5 control-label">Your Full Name:</label>
                      <div class="col-md-3">
                          <div class="input-group">
                              <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Your Name" style="text-align: center;"></asp:TextBox>
                              <span class="input-group-addon">
                                  <span class="glyphicon glyphicon-user"></span>

                              </span>
                             </div>
                      </div>
                          </div>

                        <div class="form-group" style="font-weight: bold;">
                       <label class="col-md-5 control-label">Email:</label>
                       <div class="col-md-3">
                           <div class="input-group">
                              <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email" style="text-align: center;"></asp:TextBox>
                              <span class="input-group-addon">
                                  <span class="glyphicon glyphicon-envelope"></span>
                              </span>
                             </div>                        
                      </div>
                            </div>
                           

                        <div class="form-group" style="font-weight: bold;">
                       <label class="col-md-6 control-label"></label>
                       <div class="col-md-3">
                           <asp:Button ID="txtSignUp" Cssclass="btn btn-success" runat="server" Text="Sign Up" OnClick="txtSignUp_Click" style="text-align: center;" />       
                           <asp:Label runat="server" ID="lblMsg"></asp:Label>
                        </div>
                            </div>

                          <div class="form-group">
                              <div class="col-md-5"></div>
                              <div class="col-md-3">
                                  <asp:Label ID="Label1" CssClass ="control-label" runat="server" Text="Already have an account?"></asp:Label>
                                  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SignIn.aspx" >Login</asp:HyperLink>

                              </div>
                              </div>
                                </div>
                            </div>
                        </div>
                               
                                
                            <script>
    function togglePasswordVisibility() {
        var passwordField = document.getElementById('<%= txtPass.ClientID %>');
        var icon = document.querySelector('.glyphicon-eye-open');

        if (passwordField.type === "password") {
            passwordField.type = "text";
            icon.className = 'glyphicon glyphicon-eye-open';
        } else {
            passwordField.type = "password";
            icon.className = 'glyphicon glyphicon-eye-close';
        }
    }
                            </script>
                    
                

                            <!---SingUp page end--->

                    <!---Footer Contents start here--->
                            
       
                    
        <br />
        <br />

                    <footer class ="footer-pos">
                       <div class="container">
                        <p class ="pull-right "><a href ="SignUp.aspx">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                       <p class ="pull-right" ><a href="AdminHomePage.aspx"> Admin Login  </a></p> 

                     <p>&copy; 2023 E-shopping.in &middot;<a href="Default.aspx">Home</a>&middot; <a href="About.aspx">About</a>&middot; <a href="#">Contact</a>&middot; <a href="Products.aspx">Product</a></p>
                          </div>
               </footer>
                   
                              

                    <!---Footer Contents End--->
    </form>
</body>
</html>

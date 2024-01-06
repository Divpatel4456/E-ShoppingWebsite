<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="MyEShoppingWebsite.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> User Home Page</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <meta charset="UTF-8" />
    <meta name="viewport",content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx"
            });
        });

    </script>

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
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" >
                              <span class ="sr-only">Toggle Navigation</span>
                              <span class ="icon-bar"></span>
                              <span class ="icon-bar"></span>
                              <span class ="icon-bar"></span>
                            </button>
                        
                        <a class ="navbar-brand" href ="UserHome.aspx" style="color:cornflowerblue"><span><img src="Icons/secure.png" alt="MyShopping" height="30"/></span>MyEShoppingWebsite</a>
                </div>
                    <div class ="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href ="UserHome.aspx">Home</a></li>
                            <li><a href ="About.aspx">About</a></li>
                            <%--<li ><a href ="#">Contact US</a> </li>--%>
                            <%--<li ><a href ="#">Blog-</a> </li>--%>
                            <li class ="dropdown">
                                <a href ="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                  <li><a href="Products.aspx">All Products</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Men</li>
                                <li role="separator" class="divider "></li>
                                <li><a href="ManShirt.aspx">Shirts</a></li>
                                <li><a href="ManPants.aspx">Jens</a></li>
                                <li><a href="ManDenims.aspx">Denims</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Women</li>
                                <li role="separator" class="divider "></li>
                                <li><a href="WomanTop.aspx">Top</a></li>
                                <li><a href="womanLegging.aspx">Leggings</a></li>
                                <li><a href="WomanSarees.aspx">Saree</a></li>
                                </ul>
                            </li>
                           <li>
                               <button id="btnCart" class="btn btn-primary navbar-btn" type="button">Cart<span class="badge" id="pCount" runat="server"></span>
                               </button>
                           </li>
                            <li>
                                <asp:Button ID="btnlogin" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign In" OnClick="btnlogin_Click" />
                                <asp:Button ID="Btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="Btnlogout_Click" />
                            </li>
                            <li>
                                <asp:Button ID="Button1" CssClass ="btn btn-link navbar-btn " runat="server" Text="Welcome"/></li>
                        </ul>
                    </div>
         </div>
</div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />


                    <asp:Label ID="lblSuccess" runat="server" Cssclass="text-success" style="color:black;font:bold"></asp:Label>


            <!---Footer Contents start here--->
        
                <footer >
                    <div class="container">
                    <p class ="pull-right"><a href ="UserHome.aspx">Back to top</a></p>
                    <p>&copy; 2023 E-shopping.in &middot;<a href="Default.aspx">Home</a>&middot; <a href="About.aspx">About</a>&middot; <a href="#">Contact</a>&middot; <a href="Products.aspx">Product</a></p>
                    </div>
</footer>

 <!---Footer Contents End--->
    </form>
</body>
</html>

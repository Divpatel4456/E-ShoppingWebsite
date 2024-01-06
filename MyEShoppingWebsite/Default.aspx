<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyEShoppingWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-shopping Website</title>
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
                        
                        <a class ="navbar-brand" href ="Default.aspx" style="color:cornflowerblue"><span><img src="Icons/secure.png" alt="MyEShopping" height="30"/></span>MyEShopping</a>
                </div>
                    <div class ="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href ="Default.aspx">Home</a></li>
                            <li><a href ="About.aspx">About</a></li>
                             <%--<li><a href="#">Contact US</a> </li>--%>
                            <%--<li><a href="#">Blog-</a> </li>--%>
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
                            <li id="btnSignUP" runat="server"><a href ="SignUp.aspx">SignUp</a></li>
                             <li id="btnSignIn" runat="server"><a href ="SignIn.aspx">SignIn</a></li>
                            <li>
                                 <asp:Button ID="Btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="Btnlogout_Click" />
                            </li>
                        </ul>
                    </div>
         </div>
</div>
             <!---image slider--->
            <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="Icons/image1.jpg" alt="Los Angeles" style="width:100%;" />
      </div>

      <div class="item">
        <img src="Icons/img4.jpg" alt="Chicago" style="width:100%;" />
      </div>
    
      <div class="item">
        <img src="Icons/shopping_slider_1.jpg" alt="New york" style="width:100%;" />
      </div>

        <div class="item">
        <img src="Icons/019%20Slider.jpg" alt="New york" style="width:100%;" />
       </div>

         <div class="item">
         <img src="Icons/mobile.jpg" alt="New york" style="width:100%;" />
         </div>
</div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
   <span class="glyphicon glyphicon-chevron-left"></span>
   <span class="sr-only">Previous</span>
  </a>
       <a class="left carousel-control" href="#myCarousel" data-slide="prev">
 <span class="glyphicon glyphicon-chevron-left"></span>
 <span class="sr-only">Previous</span>
</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
            <!---image slider End--->

        </div>
       
       <hr />
        <!---Middle Contents start--->
        <div class="container center ">
            <div class ="row">
                <div class="col-lg-4">
                    <img class="img-rectangle" src="Icons/iphone-15-.png" alt="thumb" width="100" height="110" />
                    <h2> Mobiles</h2>
                    <p>Apple iPhone 15 mobile was launched on 12th September 2023. The phone comes with a 60 Hz refresh rate 6.10-inch touchscreen display offering a resolution of 1179x2556 pixels at a pixel density of 460 pixels per inch (ppi).</p>
                       <p>Apple iPhone 15 is powered by a hexa-core Apple A16 Bionic processor. It comes with 6GB of RAM. The Apple iPhone 15 supports wireless charging.As far as the cameras are concerned, the Apple iPhone 15 on the rear packs a dual camera setup featuring a 48-megapixel (f/1.6) primary camera, and a 12-megapixel (f/2.4) camera.</p>
                <p><a class ="btn btn-default" href="https://www.gadgets360.com/apple-iphone-15-price-in-india-115759" role="button">View More &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                     <img class="img-rectangle" src="Icons/shoess.jpeg" alt="thumb" width="120" height="110" />
                     <h2> Footwear</h2>
                     <p>LEATHER DARK BROWN TEXTURED DERBY SHOES - RAZOR</p>
                     <p><a class ="btn btn-default" href="https://blackberrys.com/products/textured-leather-derby-shoes-in-dark-brown-razor?variant=42426415055013&currency=INR&utm_medium=product_sync&utm_source=bing&utm_content=sag_organic&utm_campaign=sag_organic&msclkid=14381f4336d817c2b8937a3f1e99f1de" role="button">View More &raquo;</a></p>
               </div>
                 <div class="col-lg-4">
                    <img class="img-rectangle" src= "Icons/download.jpg" alt="thumb" width="120" height="140" />
                    <h2> Clothings</h2>
                    <p>Qurvii</p>
                   <p>Solid Fleece Collar Neck Women's Long Jacket</p>
                    <p><a class ="btn btn-default" href="h#" role="button">View More &raquo;</a></p>
                </div>
            </div>
            <div class="panel panel-primary">
    <div class="panel-heading">
        BLACK FRIDAY DEAL</div>
    <div class="panel-body">
        <div class="row" style="padding-top: 50px">
            <asp:Repeater ID="rptrProducts" runat="server">
                <ItemTemplate>
                    <div class="col-sm-3 col-md-3">
                        <a href="Productview.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                            <div class="thumbnail">
                                <img src="Icons/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                    alt="<%# Eval("ImageName") %>" />
                                <div class="caption">
                                    <div class="probrand">
                                        <%# Eval ("BrandName") %>
                                    </div>
                                    <div class="proName">
                                        <%# Eval ("PName") %>
                                    </div>
                                    <div class="proPrice">
                                        <span class="proOgPrice">
                                            <%# Eval ("PPrice","{0:0,00}") %>
                                        </span>
                                        <%# Eval ("PSelPrice","{0:c}") %>
                                        <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                            off) </span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        </div>
        <div class="panel-footer">
            Buy 50 mobiles and get a gift card</div>
    </div>
</div>


        <!---Middle Contents start--->

        <!---Footer Contents start here--->
        <hr />
        <footer>
            <div class="container">
                  <p class ="pull-right "><a href ="Default.aspx">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                  <p class ="pull-right "><a href="AdminHomePage.aspx"> Admin Login  </a></p> 

                <p>&copy; 2023 E-shopping.in &middot;<a href="Default.aspx">Home</a>&middot; <a href="About.aspx">About</a>&middot; <a href="#">Contact</a>&middot; <a href="Products.aspx">Product</a></p>
            </div>


        </footer>

         <!---Footer Contents End--->
    </form>
    
</body>
</html>

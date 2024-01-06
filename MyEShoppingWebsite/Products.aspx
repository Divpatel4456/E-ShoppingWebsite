<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="MyEShoppingWebsite.Products" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
<br />
<br />
<div class="row">
  <div class="col-md-12">
      <button id="btnCart2" runat="server" class="btn btn-primary navbar-btn pull-right" onserverclick="btnCart2_ServerClick" type="button">
                    Cart <span id="CartBadge" runat="server" class="badge"> 0 </span>
                </button>
                <h3>
                    <asp:Label ID="Label1" runat="server" Text="Showing All Products.." ForeColor="YellowGreen" Font-Italic="true" Font-Bold="true" font-underline="true" ></asp:Label>
                </h3>
                <hr />
                
  </div>
</div>

    <div class ="row" style ="padding-top:50px">
        <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server" 
         placeholder="Search Products...." AutoPostBack="true" 
         ontextchanged="txtFilterGrid1Record_TextChanged" ></asp:TextBox>
 <br />
 <hr />
        <div class="panel panel-primary">
  <div class="panel-heading">All Products</div>
  <div class="panel-body">
        <asp:Repeater ID="RepeaterProducts" runat="server">
            <ItemTemplate> 
       <div class="col-sm-3 col-md-2">
           <div class="form horizontal">
    <a href="Productview.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
  <div class="thumbnail">              
      <img src="Icons/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" style="width:300%;height:240"/>
      <div class="caption"> 
           <div class="probrand"><%# Eval ("BrandName") %>  </div>
           <div class="proName"> <%# Eval ("PName") %> </div>
           <div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %> off) </span></div> 
           
      </div>
  </div>
        </a>
               </div>
</div>
               
                </ItemTemplate>
            </asp:Repeater>
      </div>
      </div>
    </div>
</asp:Content>

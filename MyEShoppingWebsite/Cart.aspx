<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="MyEShoppingWebsite.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
<br />
    <br />
    <br />

<div class="row" style="padding-top: 20px;">
 
       <div class="col-md-9">
  
          <h5 class="proNameViewCart" runat="server" id="h4Noitems"></h5>

 
           <asp:Repeater ID="rptrCartProducts" runat="server">
  
              <ItemTemplate>
                    <div class="media my-3" style="border: 1px solid #eaeaec;">
                        <div class=" media-left align-self-center mr-3">
                            <a href="Productview.aspx?PID=<%#Eval("PID") %>" target="_blank">
                                <img width="110px" class="media-object" src="Icons/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading proNameViewCart"><%#Eval("PName") %></h5>
                            
                            <span class="proPriceView">Rs.&nbsp<%#Eval("PSelPrice","{0:0.00}") %></span>
                            <span class="proOgPriceView">Rs.&nbsp<%#Eval("PPrice","{0:0,00}") %></span>
                            <span class="proPriceDiscount"> Off Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice")))%></span>

                            <p>
                                <asp:Button CommandArgument='<%#Eval("PID")+"-"+ Eval("SizeIDD")%>' ID="btnRemoveItem" OnClick="btnRemoveItem_Click" CssClass="RemoveButton1" runat="server" Text="REMOVE" />
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-3 pt-5" runat="server" id="divpricedetails">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 class="proNameViewCart">PRICE DETAILS</h5>
                <div>
                    <label>Cart Total</label>
                    <span class="float-right priceGray" id="spanCartTotal" runat="server"></span>
                </div>
                <div>
                    <label>Cart Discount</label>
                    <span class="float-right priceGreen" id="spanDiscount" runat="server"></span>
                </div>
            </div>
            <div>
                <div class="proPriceView">
                    <label>Total</label>
                    <span class="float-right" id="spanTotal" runat="server"></span>
                </div>
                <div>
                    

<asp:Button ID="btnBuyNow" OnClick="btnBuy_Click" CssClass="buyNowbtn" runat="server" Text="BUY NOW" />
     
           </div>
 
           </div>
 
       </div>
   
 </div>

</asp:Content>

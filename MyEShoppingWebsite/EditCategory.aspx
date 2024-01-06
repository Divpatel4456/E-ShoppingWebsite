﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="MyEShoppingWebsite.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<br />
<br />
<div class="container">


<div class="row">
         

         <div class ="col-md-6"> 

         <div class="row">
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Category ID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged"></asp:TextBox> 
                        
                    </div>
                    <div class="form-group">
                   
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Category Name:</label>
                        <asp:TextBox ID="txtUpdateCatName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
         
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server" 
                            Text="UPDATE" onclick="btnUpdateBrand_Click"/>
                    </div>
         </div>
        
         </div>
                    
                    

                    
                    
          </div>    
          <div class="col-md-6">
          
             <div class="row">
                <div class="col-md-12">
                <h4 class="alert-info text-center"> All Category</h4>
                <br />
                 <asp:TextBox ID="txtFilterGrid1Record" style="border:2px solid blue" CssClass="form-control" runat="server" placeholder="Search Category...." onkeyup="Search_Gridview(this)"></asp:TextBox>
                <hr />
                   <div class="table table-responsive">
                       <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" EmptyDataText="Record not found...">
                       </asp:GridView>
                   </div>
                </div>
             </div>
          </div>

 </div>

 </div>




 <script type="text/javascript">
     function Search_Gridview(strKey) {
         var strData = strKey.value.toLowerCase().split(" ");
         var tblData = document.getElementById("<%=GridView1.ClientID %>");
         var rowData;
         for (var i = 1; i < tblData.rows.length; i++) {
             rowData = tblData.rows[i].innerHTML;
             var styleDisplay = 'none';
             for (var j = 0; j < strData.length; j++) {
                 if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                     styleDisplay = '';
                 else {
                     styleDisplay = 'none';
                     break;
                 }
             }
             tblData.rows[i].style.display = styleDisplay;
         }
     }  
 </script>


</asp:Content>

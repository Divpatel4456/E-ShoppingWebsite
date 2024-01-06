<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="MyEShoppingWebsite.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class ="container">
     <div class ="form-horizontal">
         <br />
         <br />
         <br />
         <h2>Add SubCategory</h2>
         <hr />

         <div class="form-group">
             <asp:Label ID="Label1" CssClass ="col-md-2 control-label" runat="server" Text="Main Category ID "></asp:Label>
             <div class="col-md-3">
                 <asp:DropDownList ID="ddlMainCatID" Cssclass="form-control" runat="server"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass="form-danger" ErrorMessage="Enter Your Main Category ID" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
         </div>

         <div class="form-group">
             <asp:Label ID="Label" CssClass ="col-md-2 control-label" runat="server" Text="SubCategory Name"></asp:Label>
             <div class="col-md-3">
                 <asp:TextBox ID="txtSubCategory"  CssClass="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtSubCategoryName" runat="server" CssClass="form-danger" ErrorMessage="Enter Your SubCategory" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
         </div>

       
      <div class="form-group">
         <div class="col-md-2"></div>
         <div class="col-md-6">
             <asp:Button ID="BtnAddSubCategory" CssClass="btn btn-success" runat="server" Text="Add SubCategory" OnClick="BtnAddSubCategory_Click" />
             
      </div>
    </div>
        
   </div>

        <h1>SubCategories</h1>
 <hr />
 <div class="panel panel-default">
     <div class="panel-heading">All Sub Categories</div>


     <asp:Repeater ID="rptrSubCat" runat="server">

         <HeaderTemplate>
             <table class="table">
                 <thead>
                     <tr>
                        <th>#</th>
                        <th>Sub-Categories</th>
                         <th>Main CategoryID</th>
                        <th>Edit</th>
                     </tr>
                 </thead>
             <tbody>
         </HeaderTemplate>

         <ItemTemplate>

         <tr>
              <th><%# Eval("SubCatID") %></th>
              <td><%# Eval("SubCatName") %></td>
             <td><%# Eval("CatName") %></td>
              <td>Edit</td>
         </tr>

         </ItemTemplate>

         <FooterTemplate>

          </tbody>
              </table>

         </FooterTemplate>

     
     </asp:Repeater>

 </div>

</div>
</asp:Content>

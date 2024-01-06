<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="MyEShoppingWebsite.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class ="container">
     <div class ="form-horizontal">
         <br />
         <br />
         <br />
         <h2>Add Size</h2>
         <hr />


          <div class="form-group">
             <asp:Label ID="Label" CssClass ="col-md-2 control-label" runat="server" Text="Size"></asp:Label>
             <div class="col-md-3">
                 <asp:TextBox ID="txtSize"  CssClass="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtSize" runat="server" CssClass="form-danger" ErrorMessage="Enter Your Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
         </div>

         <div class="form-group">
             <asp:Label ID="Label1" CssClass ="col-md-2 control-label" runat="server" Text="Brand"></asp:Label>
             <div class="col-md-3">
                 <asp:DropDownList ID="ddlBrand" Cssclass="form-control" runat="server"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrand" runat="server" CssClass="form-danger" ErrorMessage="Enter Your Brand" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
         </div>

         <div class="form-group">
             <asp:Label ID="Label2" CssClass ="col-md-2 control-label" runat="server" Text="Category "></asp:Label>
             <div class="col-md-3">
                 <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass="form-danger" ErrorMessage="Enter Your Category" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
         </div>

         <div class="form-group">
             <asp:Label ID="Label3" CssClass ="col-md-2 control-label" runat="server" Text="SubCategory "></asp:Label>
             <div class="col-md-3">
                 <asp:DropDownList ID="ddlSubCategory" Cssclass="form-control" runat="server"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" runat="server" CssClass="form-danger" ErrorMessage="Enter Your SubCategory" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
         </div>
         

         <div class="form-group">
             <asp:Label ID="Label4" CssClass ="col-md-2 control-label" runat="server" Text="Gender "></asp:Label>
             <div class="col-md-3">
                 <asp:DropDownList ID="ddlGender" Cssclass="form-control" runat="server"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="form-danger" ErrorMessage="Enter Your Gender " ControlToValidate="ddlGender"  ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
         </div>  


       
      <div class="form-group">
         <div class="col-md-2"></div>
         <div class="col-md-6">
             <asp:Button ID="BtnAddSize" CssClass="btn btn-success" runat="server" Text="Add Size" OnClick="BtnAddSize_Click" />
             
      </div>
    </div>
        
   </div>


           <h1>Size</h1>
<hr />
<div class="panel panel-default">
    <div class="panel-heading">All Size</div>


    <asp:Repeater ID="rptrSize" runat="server">

        <HeaderTemplate>
            <table class="table">
                <thead>
                    <tr>
                       <th>#</th>
                       <th>Size</th>
                        <th>Brand</th>
                        <th>Category</th>
                        <th>SubCategory</th>
                        <th>Gender</th>
                       <th>Edit</th>
                    </tr>
                </thead>
            <tbody>
        </HeaderTemplate>

        <ItemTemplate>

        <tr>
             <th><%# Eval("SizeID") %></th>
             <td><%# Eval("SizeName") %></td>
            <td><%# Eval("Name") %></td>
            <td><%# Eval("CatName") %></td>
            <td><%# Eval("SubCatName") %></td>
            <td><%# Eval("GenderName") %></td>

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

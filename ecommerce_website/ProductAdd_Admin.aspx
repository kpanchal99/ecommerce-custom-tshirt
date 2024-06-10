<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductAdd_Admin.aspx.cs" Inherits="ecommerce_website.myAccount" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex align-items-center justify-content-center bg-light" style="min-height: 83.8vh; margin: 0;">
        <div class="bg-white p-4 border shadow rounded w-50" style="border-radius:5px;">
            <h3 class="text-center font-weight-light mb-4">Add New Product</h3>
            
            <div class="row mb-2">
                <div class="form-group col-md-6 mb-2">
                    <label for="txtProductName" class="font-weight-normal">Product Name:</label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="Required" CssClass="form-text text-danger"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-6 mb-2">
                    <label for="ddlProduct" class="font-weight-normal">Product Category:</label>
                    <asp:DropDownList ID="ddlProduct" runat="server" CssClass="form-control" Width="100%" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlProduct" ErrorMessage="Required" CssClass="form-text text-danger"></asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [id], [name] FROM [category]"></asp:SqlDataSource>
                </div>
            </div>
            
            <div class="form-group  mb-2">
                <label for="txtProductDescription" class="font-weight-normal">Product Description:</label>
                <asp:TextBox ID="txtProductDescription" runat="server" TextMode="MultiLine" CssClass="form-control" Width="100%"></asp:TextBox>
            </div>
            
            <div class="row mb-2">
                <div class="form-group col-md-6">
                    <label for="fileImg" class="font-weight-normal">Product Image:</label>
<asp:FileUpload ID="fileImg" runat="server" CssClass="form-control" Width="100%"></asp:FileUpload>
<asp:RequiredFieldValidator ID="rfvFileImg" runat="server" 
    ControlToValidate="fileImg" 
    ErrorMessage="Please upload a file." 
    CssClass="text-danger"
    Display="Dynamic"></asp:RequiredFieldValidator>                </div>
                <div class="form-group col-md-6 mb-2">
                    <label for="txtProductPrice" class="font-weight-normal">Product Price:</label>
                    <asp:TextBox ID="txtProductPrice" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductPrice" ErrorMessage="Required" CssClass="form-text text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="d-flex justify-content-center mt-2 mb-2">
                <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-dark mt-2" OnClick="Button1_Click" />
            </div>
            
           
            <div class="text-center mt-2">
                <asp:Label ID="lblMessage" runat="server" Text="" CssClass="form-text text-success text-center fs-1"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

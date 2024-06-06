<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewCategory_Admin.aspx.cs" Inherits="ecommerce_website.AddNewCategory_Admin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex align-items-center justify-content-center bg-light" style="min-height: 83.8vh; margin: 0;">
        <div class="bg-white p-4 border shadow rounded w-25" style="border-radius:5px;">
            <h3 class="text-center font-weight-light mb-4">Add New Category</h3>
            <div class="form-group mb-4">
                <label for="txtCategory" class="font-weight-normal">Category Name:</label>
                <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" ErrorMessage="Required" CssClass="form-text text-danger "></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-dark btn-block mt-4" OnClick="btnSubmit_Click" />
            <div class="text-center mt-3">
                <asp:Label ID="lblMessage" runat="server" Text="" CssClass="form-text text-success text-center"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="PublicRegister.aspx.cs" Inherits="ecommerce_website.PublicRegister" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="d-flex align-items-center justify-content-center bg-light" style="min-height: 81.8vh;">
        <div class="mx-auto p-4 bg-white shadow border rounded" style="max-width: 450px; border-radius: 15px; ">
            <h3 class="text-center">Create An Account</h3>
            <form class="form-group">
                <div class="mb-3 row">
                    <label for="txtName" class="col-sm-4 col-form-label text-end">User Name:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control "></asp:TextBox>
                        <asp:Label ID="lblName" runat="server" CssClass="form-text text-danger"></asp:Label>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtEmail" class="col-sm-4 col-form-label text-end">Email:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="lblEmail" runat="server" CssClass="form-text text-danger"></asp:Label>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtPassword" class="col-sm-4 col-form-label text-end">Password:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="lblPassword" runat="server" CssClass="form-text text-danger"></asp:Label>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtConfirmPass" class="col-sm-4 col-form-label text-end">Confirm Password:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="lblConfirm" runat="server" CssClass="form-text text-danger"></asp:Label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-block btn-dark" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-dark btn-block" OnClick="btnReset_Click" />
                </div>
                <div class="text-center mt-3">
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                </div>
            </form>
        </div>
    </div>

</asp:Content>

    <%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="PublicRegister.aspx.cs" Inherits="ecommerce_website.PublicRegister" %>

    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
            input[type="text"],
            input[type="password"],
            input[type="email"],
            input[type="tel"],
            input[type="select"] {
                max-width: 100% !important;
            }
 
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="d-flex align-items-center justify-content-center bg-light" style="height:100vh">
            <div class="mx-auto p-5 bg-white shadow border rounded">
                <h3 class="text-center fw-semibold pb-3">Create An Account</h3>
                <form class="form-group">
                    <div class="mb-3 row">
                        <label for="txtName" class="form-label mx-2">User Name</label>
                        <div class="col-md-12">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control w-100"></asp:TextBox>
                            <asp:Label ID="lblName" runat="server" CssClass="form-text text-danger"></asp:Label>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="txtEmail" class="form-label mx-2">Email</label>
                        <div class="col-md-12">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control w-100"></asp:TextBox>
                            <asp:Label ID="lblEmail" runat="server" CssClass="form-text text-danger"></asp:Label>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="txtPassword" class="form-label  mx-2">Password</label>
                        <div class="col-md-12">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control w-100" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="lblPassword" runat="server" CssClass="form-text text-danger"></asp:Label>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="txtConfirmPass" class="form-label  mx-2">Confirm Password</label>
                        <div class="col-md-12">
                            <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="form-control w-100" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="lblConfirm" runat="server" CssClass="form-text text-danger"></asp:Label>
                        </div>
                    </div>
                    <div class="d-flex align-items-center py-4 mt-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-block btn-dark" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-dark btn-block mt-0 ms-2" OnClick="btnReset_Click" />
                    </div>
                    <div class="text-center mt-3">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </form>
            </div>
        </div>

    </asp:Content>

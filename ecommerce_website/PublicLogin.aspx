<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="PublicLogin.aspx.cs" Inherits="ecommerce_website.PublicLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
     input[type="text"],
     input[type="password"],
     input[type="email"],
     input[type="tel"],
     input[type="select"] {
         max-width: 100% !important;
     }
 
 </style>
    <div class="d-flex align-items-center justify-content-center bg-light" style="height: 81.8vh;">
        <div class="login-form bg-white p-4 border shadow w-25 rounded" style="border-radius: 5px;">
            <h3 class="text-center fw-semibold mb-4">Log In Here</h3>
            <div class="form-group mb-4">
                <label for="txtEmail" class="font-weight-normal">Email</label>
                <asp:TextBox ID="txtEmail" type="text" placeholder="Enter Email" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group mb-4">
                <label for="txtPassword" class="font-weight-normal">Password</label>
                <asp:TextBox ID="txtPassword" type="password" placeholder="••••••" runat="server" CssClass="form-control" />
            </div>
            <div class="py-4">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-dark btn-block " OnClick="btnSubmit_Click" />
            </div>
            <div class="text-center mt-3">
                <a href="PublicRegister.aspx" class="text-primary">Create Account</a><br />
            </div>
            <div class="text-center mt-4">
                <asp:Label ID="lblMessage" runat="server" Text="" CssClass="form-text text-danger"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>

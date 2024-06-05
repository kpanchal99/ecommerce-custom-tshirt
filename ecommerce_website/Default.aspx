 <%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ecommerce_website.ClientHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/ClientHomePageDesign.css" rel="stylesheet" />

    <div>
        
         <section class="bg-dark text-white text-center py-5 ">
             <div class="py-5"></div>
             <div class="py-5"></div>
            <div class="container-fluid py-5">
                <h1>Welcome to Customized T-Shirts</h1>
                <p>Create your own unique t-shirt designs easily</p>
                <a href="product_List.aspx" class="btn btn-light">Shop Now</a>
            </div>
             <div class="py-5"></div>
             <div class="py-5"></div>
        </section>
         <section class="py-5">
        <div class="container">
             <div class="py-5"></div>
             <div class="py-5"></div>
            <h2 class="text-center fw-semibold">How It Works</h2>
             <div class="py-3"></div>
            <div class="row text-center">

                <div class="col-md-4">
                    <h5 class="fs-3 fw-semibold">Step 1</h5>
                    <p>Choose your t-shirt</p>
                </div>
                <div class="col-md-4">
                    <h5 class="fs-3 fw-semibold">Step 2</h5>
                    <p>Design your style</p>
                </div>
                <div class="col-md-4">
                    <h5 class="fs-3 fw-semibold">Step 3</h5>
                    <p>Place your order</p>
                </div>
            </div>
             <div class="py-5"></div>
             <div class="py-5"></div>
        </div>
    </section>
            <div class="container">
              <div class="row">
                <div class="col-md-6">
                    <div class="border border-2 rounded-3 border-dark h-100">
                        <asp:ImageButton  ID="ImageButton1" CssClass="img-fluid" runat="server" ImageUrl="~/images/choose_image/1.png"  OnCommand="Image_Click" CommandName="ImageClick1" CommandArgument="1.png"> </asp:ImageButton>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="border border-2 rounded-3 border-dark h-100">
                       <asp:ImageButton ID="ImageButton2" CssClass="img-fluid" runat="server" ImageUrl="images/choose_image/2.png"  OnCommand="Image_Click" CommandName="ImageClick2" CommandArgument="2.png"> </asp:ImageButton>
                    </div>
                </div>
              </div>
            </div>
             <div class="py-5"></div>
             <div class="py-5"></div>
    
    </div>
</asp:Content>

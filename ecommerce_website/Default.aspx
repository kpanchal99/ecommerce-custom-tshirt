 <%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ecommerce_website.ClientHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/ClientHomePageDesign.css" rel="stylesheet" />

    <div class="pc">
        
     
            <div class="container">
              <div class="row">
                <div class="col-sm-6">
                    <asp:ImageButton CssClass="p" ID="ImageButton1" runat="server" ImageUrl="images/choose_image/1.png"  OnCommand="Image_Click" CommandName="ImageClick1" CommandArgument="1.png"> </asp:ImageButton>

                </div>
                <div class="col-sm-6 other">
                    <asp:ImageButton CssClass="p" ID="ImageButton2" runat="server" ImageUrl="images/choose_image/2.png"  OnCommand="Image_Click" CommandName="ImageClick2" CommandArgument="2.png"> </asp:ImageButton>
                </div>
              </div>
            </div>
      
    
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="BuyT-Shirt.aspx.cs" Inherits="ecommerce_website.Buy_ProductbyClient" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style2 {
            font-size: large;
            color: #FFFFFF;
        }

        .auto-style5 {
            text-align: left;
        }

        .auto-style6 {
            text-align: right;
            font-size: large;
            color: #FFFFFF;
        }
        .btn-dark {
     --bs-btn-hover-bg: none !important; 
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            <div class="container design-heading py-5">
        <h1 class="text-center fw-semibold">Design Your Own T-Shirt</h1>
        <p class="text-center text-muted">Create a unique t-shirt by selecting your preferred size and design options.</p>
    </div>
            <div class="container py-5">
                <div class="row py-5">
                    <div class="col-md-6">
                        <asp:Image ID="imglode" runat="server" class="img-fluid w-100" />
                    </div>
                    <div class="col-md-6">
                        <div>
                            <p>Price:</p>
                            <asp:Label ID="lblprice" runat="server" Text="" CssClass="text-black pb-4"></asp:Label>
                        </div>
                        <div>
                            <p  class="pt-2">Size</p>
                             <asp:DropDownList ID="ddlSize" runat="server" Width="100px"  CssClass="form-control" AutoPostBack="True">
                                 <asp:ListItem>Small</asp:ListItem>
                                 <asp:ListItem>Medium</asp:ListItem>
                                 <asp:ListItem>Large</asp:ListItem>
                                 <asp:ListItem>X-Large</asp:ListItem>
                             </asp:DropDownList>
                        </div>
                        <div>
                            <p class="pt-2">Quantity:</p>
                            <asp:DropDownList ID="ddlQuantity" runat="server" Width="100px" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlQuantity_SelectedIndexChanged">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                            <p class="pt-2">Total:</p>
                            <asp:TextBox ID="txtTotal" runat="server" Width="100px"  CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                             <p class="pt-2">Address</p>
                             <asp:TextBox ID="txtAddress" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="d-flex py-4">
                         <div>
                            <asp:Button ID="btnSubmit" runat="server" Text="Add To Cart"  CssClass="btn btn-dark" OnClick="btnSubmit_Click" />
                            <ajaxToolkit:DropShadowExtender ID="btnSubmit_DropShadowExtender" runat="server" BehaviorID="btnSubmit_DropShadowExtender" Radius="15" Rounded="True" TargetControlID="btnSubmit" TrackPosition="True" ViewStateMode="Enabled" />
                            &nbsp;
                        </div>
                        <div>
                             <asp:Button ID="btnCancle" runat="server" Text="Cancel"  CssClass="btn btn-danger" OnClick="btnCancle_Click" />
                             <ajaxToolkit:DropShadowExtender ID="btnCancle_DropShadowExtender" runat="server" BehaviorID="btnCancle_DropShadowExtender" Radius="15" Rounded="True" TargetControlID="btnCancle" TrackPosition="True" />
                        </div>
                        </div>
                        <div>
                             <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="py-5"></div>
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>

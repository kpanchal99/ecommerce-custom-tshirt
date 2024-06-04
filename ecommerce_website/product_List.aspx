<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="product_List.aspx.cs" Inherits="ecommerce_website.publicSite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/DefaultClient.css" rel="stylesheet" />

    <div class="productContainer">

        <div class="container mt-5 d-flex" style="display:flex;flex-wrap:wrap;">
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1" OnItemCreated="Repeater1_ItemCreated1">
        <ItemTemplate>
            <div class="col mb-4">
                <div class="card h-100">
                    <asp:ImageButton ID="phImage" runat="server" CssClass="card-img-top" style="height: 350px; object-fit: cover;" ImageUrl='<%# "uploads/productImages/" + Eval("image") %>' OnCommand="Image_Click" CommandName="ImageClick" CommandArgument='<%# Eval("image") + " " + Eval("price") %>' />
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("name") %></h5>
                        <p class="card-text">₹ <%# Eval("price") %> /-</p>
                    </div>
                </div>
            </div>
        </ItemTemplate>
  
    </asp:Repeater>
</div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [name], [id], [image], [price] FROM [vw_product]"></asp:SqlDataSource>

    </div>
</asp:Content>

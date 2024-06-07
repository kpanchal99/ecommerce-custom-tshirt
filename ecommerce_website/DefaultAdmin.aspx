<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="DefaultAdmin.aspx.cs" Inherits="ecommerce_website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5 mb-5">
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCreated="Repeater1_ItemCreated">
                <ItemTemplate>
                    <div class="col-md-3 mb-4">
                        <div class="card h-100 " style="cursor: pointer;">
                            <img class="card-img-top" style="height:250px;" src='<%# "uploads/productImages/" + Eval("image") %>' alt="Product Image" />
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title fw-semibold"><%# Eval("name") %></h5>
                                <p class="card-text mt-auto">₹ <%# Eval("price") %> /-</p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [id], [price], [name], [image] FROM [vw_product]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>

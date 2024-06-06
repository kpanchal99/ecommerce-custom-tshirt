<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logo_Update.aspx.cs" Inherits="ecommerce_website.Logo_Update" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="d-flex align-items-center justify-content-center bg-light" style="min-height: 83.8vh; margin: 0;">
        <div class="bg-white p-4 border shadow rounded w-50" style="border-radius:5px;">
            <h3 class="text-center font-weight-light mb-4">Upload Logo</h3>

            <div class="form-group mb-2">
                <label for="FileUpload1" class="font-weight-normal">Upload Logo:</label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" Width="100%"></asp:FileUpload>
            </div>

            <div class="text-center mb-4"> 
                <asp:Button ID="btnUpload" runat="server" Text="Submit" CssClass="btn btn-dark" OnClick="btnUpload_Click" />
               
            </div>

            <div class="text-center mt-2">
                <asp:Label ID="lblText" runat="server" Text="" CssClass="form-text text-success text-center"></asp:Label>
            </div>

            <div class="mt-4">
                <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Height="200px" Width="100%" BorderColor="Black">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="80px" RepeatColumns="5" RepeatDirection="Horizontal" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4">
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="White" ForeColor="#333333" />
                        <ItemTemplate>
                            <div class="d-flex align-items-center justify-content-center p-2">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "uploads/productlogo/"+ Eval("logo") %>' Height="80px" Width="80px" />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [id], [logo] FROM [Logo]"></asp:SqlDataSource>
                </asp:Panel>
            </div>
        </div>
    </div>

</asp:Content>

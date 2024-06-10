<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="DesignT-shirt.aspx.cs" Inherits="ecommerce_website.DesignT_shirt" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn-dark {
     --bs-btn-hover-bg: none !important; 
}
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/DesignT-shirt.css" rel="stylesheet" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="container design-heading">
                    <h1 class="text-center fw-semibold">Design Your Own T-Shirt</h1>
                    <p class="text-center text-muted">Unleash your creativity and design a t-shirt that reflects your unique style. Use our easy-to-use design tools to bring your ideas to life.</p>
                </div>
                <div class="py-5"></div>
                <div class="row">
                    <!-- Left Side (40%) -->
                    <div class="col-md-4">
                        <!-- Place your cost content here -->
                        <div class="loadImage" style="top:175px; left:56%">
                            <%=LoadsecondImage() %>
                        </div>
                        <div class="image">
                            <h2>
                                <asp:Label ID="lbltext1" runat="server"></asp:Label>
                            </h2>
                            <%=LodeImage() %>
                        </div>
                    </div>
                    <!-- Right Side (60%) -->
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="TextBox1" class="auto-style1">Text:</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="DropDownList1" class="auto-style1">Size:</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" class="form-control">
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="DropDownList2" class="auto-style1">Color:</label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True" class="form-control">
                                        <asp:ListItem>Black</asp:ListItem>
                                        <asp:ListItem>Red</asp:ListItem>
                                        <asp:ListItem>Green</asp:ListItem>
                                        <asp:ListItem>Yellow</asp:ListItem>
                                        <asp:ListItem>Blue</asp:ListItem>
                                        <asp:ListItem>White</asp:ListItem>
                                        <asp:ListItem>Orange</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="DropDownList3" class="auto-style1">Font:</label>
                                    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True" class="form-control">
                                        <asp:ListItem>Arial</asp:ListItem>
                                        <asp:ListItem>Verdana</asp:ListItem>
                                        <asp:ListItem>Times</asp:ListItem>
                                        <asp:ListItem>Arial Black</asp:ListItem>
                                        <asp:ListItem>Cambia Research</asp:ListItem>
                                        <asp:ListItem>Tahoma</asp:ListItem>
                                        <asp:ListItem> @Arial Unicode MS </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="mt-4">
                            <label for="Label1" class="auto-style1">Choose Color:</label>
                            <div class="d-flex flex-row justify-content-start" style="display: flex; flex-direction: row; row-gap: 10px;">
                                <div class="px-2 ">
                                    <asp:Button ID="btn1" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#F4F4F4" BorderStyle="None" Height="30px" Width="30px" OnClientClick="btn1_Click" OnClick="btn1_Click1" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn2" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#565656" BorderStyle="None" Height="30px" Width="30px" OnClick="btn2_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn3" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#DFF901" BorderStyle="None" Height="30px" Width="30px" OnClick="btn3_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn4" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#85C8EA" BorderStyle="None" Height="30px" Width="30px" OnClick="btn4_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn5" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#72E86F" BorderStyle="None" Height="30px" Width="30px" OnClick="btn5_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn6" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#FE4B00" BorderStyle="None" Height="30px" Width="30px" OnClick="btn6_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn7" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#654A2E" BorderStyle="None" Height="30px" Width="30px" OnClick="btn7_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn8" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#531C70" BorderStyle="None" Height="30px" Width="30px" OnClick="btn8_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn9" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#25A94C" BorderStyle="None" Height="30px" Width="30px" OnClick="btn9_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn10" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#D94153" BorderStyle="None" Height="30px" Width="30px" OnClick="btn10_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn11" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#1B421F" BorderStyle="None" Height="30px" Width="30px" OnClick="btn11_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn12" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#1D1F37" BorderStyle="None" Height="30px" Width="30px" OnClick="btn12_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn13" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#F0E642" BorderStyle="None" Height="30px" Width="30px" OnClick="btn13_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn14" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#B2A075" BorderStyle="None" Height="30px" Width="30px" OnClick="btn14_Click" />
                                </div>
                                <div class="px-2 ">
                                    <asp:Button ID="btn15" runat="server" CssClass="rounded-circle border border-dark btn" BackColor="#BBDFEB" BorderStyle="None" Height="30px" Width="30px" OnClick="btn15_Click" />
                                </div>
                            </div>
                        </div>


                        <%--column end--%>
                    </div>
                    <%--row end--%>
                </div>
                <div align="center" style="margin-top: 50px">
                    <div style="margin-top: 15px" class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Clip Art:" CssClass="auto-style1"></asp:Label>
                    </div>
                    <div style="margin-top: 5px">
                        <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Height="200px" Width="600px" BorderColor="Black">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="80px" RepeatColumns="5" RepeatDirection="Horizontal" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="White" ForeColor="#333333" />
                                <ItemTemplate>
                                    <table style="width: 100%; height: 20px; margin: 5px">
                                        <tr>
                                            <td>
                                                <asp:ImageButton ID="phImage" runat="server"  ImageUrl='<%# "uploads/productLogo/" + Eval("logo") %>' OnCommand="Image_Click" CommandName="ImageClick" CommandArgument='<%# Eval("logo") %>' align="left" Width="80px" />
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [id], [logo] FROM [Logo]"></asp:SqlDataSource>
                        </asp:Panel>
                    </div>
                    <div class="container mt-4">
                        <div class="row">
                            <div class="col-md-6">
                                <strong>Price:</strong>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblprice" runat="server" Text="₹ 350/-" CssClass="auto-style3"></asp:Label>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <strong>Size:</strong>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="ddlSize" runat="server" CssClass="form-control" Width="100px" AutoPostBack="True">
                                    <asp:ListItem>Small</asp:ListItem>
                                    <asp:ListItem>Medium</asp:ListItem>
                                    <asp:ListItem>Large</asp:ListItem>
                                    <asp:ListItem>X-Large</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <strong>Quantity:</strong>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="ddlQuantity" runat="server" CssClass="form-control" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="ddlQuantity_SelectedIndexChanged">
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
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <strong>Total:</strong>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control" Width="100px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <strong>Address:</strong>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top: 10px">
                        <tr>
                            <td>
                                <asp:Button ID="btnOrder" runat="server" Text="Add to Cart" CssClass="btn btn-dark" OnClick="btnOrder_Click" />
                                <ajaxToolkit:DropShadowExtender ID="btnOrder_DropShadowExtender" runat="server" BehaviorID="btnOrder_DropShadowExtender"  Radius="10" Rounded="True" TargetControlID="btnOrder" TrackPosition="True" />
                                &nbsp;
                            </td>
                            <td>
                                <asp:Button ID="btnCancle" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btnCancle_Click" />
                                <ajaxToolkit:DropShadowExtender ID="btnCancle_DropShadowExtender" runat="server" BehaviorID="btnCancle_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnCancle" TrackPosition="True" />
                            </td>
                        </tr>
                    </div>
                    <div style="margin-top: 10px; margin-bottom: 10px">
                        <tr>
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        </tr>
                    </div>
                </div>
            </div>
            <div class="py-5"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

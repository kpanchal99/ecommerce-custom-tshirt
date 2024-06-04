<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="PublicRegister.aspx.cs" Inherits="ecommerce_website.PublicRegister" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            color: #CCCCCC;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/userLogin.css" rel="stylesheet" />
    <div class="container" style="margin-top: 150px; max-width: 450px;">
  <div class="card shadow-lg" style="border-radius: 15px;">
    <div class="card-body">
      <h3 class="card-title text-center">Create An Account</h3>
      <form>
        <div class="mb-3 row">
          <label for="txtName" class="col-sm-4 col-form-label text-end"><strong>User Name:</strong></label>
          <div class="col-sm-8">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
            <asp:Label ID="lblName" runat="server" CssClass="form-text text-muted"></asp:Label>
          </div>
        </div>
        <div class="mb-3 row">
          <label for="txtEmail" class="col-sm-4 col-form-label text-end"><strong>Email:</strong></label>
          <div class="col-sm-8">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
            <asp:Label ID="lblEmail" runat="server" CssClass="form-text text-muted"></asp:Label>
          </div>
        </div>
        <div class="mb-3 row">
          <label for="txtPassword" class="col-sm-4 col-form-label text-end"><strong>Password:</strong></label>
          <div class="col-sm-8">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Width="100%" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lblPassword" runat="server" CssClass="form-text text-muted"></asp:Label>
          </div>
        </div>
        <div class="mb-3 row">
          <label for="txtConfirmPass" class="col-sm-4 col-form-label text-end"><strong>Confirm Password:</strong></label>
          <div class="col-sm-8">
            <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="form-control" Width="100%" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lblConfirm" runat="server" CssClass="form-text text-muted"></asp:Label>
          </div>
        </div>
        <div class="text-center">
          <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
          <ajaxToolkit:DropShadowExtender ID="btnSubmit_DropShadowExtender" runat="server" BehaviorID="btnSubmit_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnSubmit" TrackPosition="True"></ajaxToolkit:DropShadowExtender>
          <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger" OnClick="btnReset_Click" />
          <ajaxToolkit:DropShadowExtender ID="btnReset_DropShadowExtender" runat="server" BehaviorID="btnReset_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnReset" TrackPosition="True"></ajaxToolkit:DropShadowExtender>
        </div>
        <div class="text-center mt-3">
          <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
        </div>
      </form>
    </div>
  </div>
</div>

 <%--   <div align="center" style="margin-top: 150px">
        <table style="height: 200px; width: 450px; border-radius: 15px 15px 15px 15px; background-image: url('images/Transparent Panel 3.png');">
            <tr>
                <td colspan="3" align="center" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">Create An Account</span></td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>User Name:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtName" runat="server" Width="180px" Height="20px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>Email:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px" Height="20px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>Password:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtPassword" runat="server" Width="180px" Height="20px" TextMode="Password"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>Confirm Password:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtConfirmPass" runat="server" Width="180px" Height="20px" TextMode="Password"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblConfirm" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
        <table style="margin-top: 10px">
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="Lime" Height="30px" Width="80px" OnClick="btnSubmit_Click" />
                    
                    <ajaxToolkit:DropShadowExtender ID="btnSubmit_DropShadowExtender" runat="server" BehaviorID="btnSubmit_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnSubmit" TrackPosition="True">
                    </ajaxToolkit:DropShadowExtender>
                    
                    &nbsp;
                    <asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="Red" Height="30px" Width="80px" OnClick="btnReset_Click" />

                    <ajaxToolkit:DropShadowExtender ID="btnReset_DropShadowExtender" runat="server" BehaviorID="btnReset_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnReset" TrackPosition="True">
                    </ajaxToolkit:DropShadowExtender>

                </td>
            </tr>
        </table>

        <div align="center" style="margin-top: 20px; left: 50%">
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
            </tr>
        </div>
    </div>--%>

</asp:Content>

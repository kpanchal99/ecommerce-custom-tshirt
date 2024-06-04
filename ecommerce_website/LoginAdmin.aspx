<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="ecommerce_website.LoginAdmin" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel - LOGIN</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">

        .global-container {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #f5f5f5;
        }
        .form {
            padding-top: 10px;
            font-size: 14px;
            margin-top: 30px;
        }
        .card-title {
            font-weight: 300;
        }
        .btn {
            font-size: 14px;
            margin-top: 20px;
        }
        .login-form {
            width: 330px;
            margin: 20px;
        }
        .sign-up {
            text-align: center;
            padding: 20px 0 0;
        }
        .alert {
            margin-bottom: -30px;
            font-size: 13px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="global-container">
            <div class="card login-form">
                <div class="card-body">
                    <h3 class="card-title text-center">Admin Login</h3>
                    <div class="card-text">
                        <!--
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">Incorrect username or password.</div> -->
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" CssClass="alert alert-danger" style="display:none;"></asp:Label>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control form-control-sm" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtName" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <a href="#" style="float:right;font-size:12px;">Forgot password?</a>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-sm" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-dark btn-block" OnClick="btnLogin_Click" Text="Sign in" />
<%--                        <ajaxToolkit:DropShadowExtender ID="btnLogin_DropShadowExtender" runat="server" BehaviorID="btnLogin_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnLogin" TrackPosition="True" Width="10" ViewStateMode="Enabled"></ajaxToolkit:DropShadowExtender>--%>
                        <div class="sign-up">
                            Don't have an account? <a href="#">Create One</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <table style="margin-top:15px"; align="center">
            <tr>
                <td>
                    <asp:Label ID="lblLoginMessage" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

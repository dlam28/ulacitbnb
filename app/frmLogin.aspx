﻿<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="AppUlacitBnB.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Log In | Ulacit B&B</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/login-style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 style="margin-bottom: 40px">ULACITB&B| Credentials</h1>
            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" placeholder="Enter username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" ControlToValidate="txtUsername" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Enter password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Maroon" Visible="false" />

            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <asp:CheckBox ID="cbIsHostUser" runat="server" /> Host User
                    </label>
                </div>
            </div>
            <asp:Button ID="btnIngresar" runat="server" CssClass="btn btn-primary" Text="Sign In" OnClick="btnIngresar_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" style="margin-left: 10px" NavigateUrl="~/frmRegister.aspx">Register as Customer</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-info" style="margin-left: 10px" NavigateUrl="~/Views/frmRegisterHost.aspx">Register as Host</asp:HyperLink>
        </div>
    </form>
</body>
</html>

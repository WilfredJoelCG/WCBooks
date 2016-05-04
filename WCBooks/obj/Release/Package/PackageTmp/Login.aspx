<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WCBooks.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<meta charset="utf-8"/>
		<title>Login</title>
		<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>
		
    <style>
body {
    /*background: url('http://i.imgur.com/Eor57Ae.jpg') no-repeat fixed center center;*/
    background-size: cover;
    font-family: Montserrat;
    background-color:#A59FA6;
}

.logo {
    width: 213px;
    height: 36px;
    /*background: url('http://i.imgur.com/fd8Lcso.png') no-repeat;*/
    margin: 30px auto;
}

.login-block {
    width: 320px;
    padding: 20px;
    background: #fff;
    border-radius: 5px;
    border-top: 5px solid #7A0E84;
    margin: 0 auto;
}

.login-block h1 {
    text-align: center;
    color: #000;
    font-size: 18px;
    text-transform: uppercase;
    margin-top: 0;
    margin-bottom: 20px;
}

.login-blockinput {
    width: 100%;
    height: 42px;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #ccc;
    margin-bottom: 20px;
    font-size: 14px;
    font-family: Montserrat;
    padding: 0 20px 0 50px;
    outline: none;
}

.login-blockinput#UsuarioTextBox {
    background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-blockinput#UsuarioTextBox:focus {
    background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-blockinput#PassTextBox {
    background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-blockinput#PassTextBox:focus {
    background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-blockinput:active, .login-block input:focus {
    border: 1px solid #ff656c;
}

.login-blockbutton {
    width: 100%;
    height: 40px;
    background: #7A0E84;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #7A0E84;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
    font-size: 14px;
    font-family: Montserrat;
    outline: none;
    cursor: pointer;
}

.login-blockbutton:hover {
    background: #6D32DA;
}

        .auto-style1 {
            color: #660066;
        }

    </style>
</head>
<body>
    <form runat="server">
   <div class="logo">
       <h1 class="auto-style1" style="text-align: center">WCBooks</h1>
    </div>
<div class="login-block">
    <h1>Login</h1>
    <asp:TextBox CssClass="login-blockinput" ID="UsuarioTextBox" runat="server"></asp:TextBox>
    <asp:TextBox CssClass="login-blockinput" ID="PassTextBox" runat="server" TextMode="Password"></asp:TextBox>
   <asp:Button CssClass="login-blockbutton" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
</div>
  
    <script src="/Resource/js/jquery.min.js"></script>
    <script src="/Resource/js/bootstrap.min.js"></script>
    </form>
</body>
</html>

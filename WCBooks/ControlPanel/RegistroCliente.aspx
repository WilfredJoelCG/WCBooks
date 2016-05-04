<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="WCBooks.ControlPanel.RegistroCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        .auto-style2 {
            width: 474px;
        }
        .auto-style3 {
            width: 115px;
        }
        .auto-style4 {
            width: 115px;
            height: 24px;
        }
        .auto-style5 {
            width: 474px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:48%;">
        <tr>
            <td class="auto-style1" colspan="3">
                <h1>
                <asp:Label ID="Label1" runat="server" Text="Registro de Clientes" style="text-align: center; font-weight: 700"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="IdCliente:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="IdClienteTextBox1" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Nombres:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="NombresTextBox2" runat="server" Width="234px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NombresTextBox2" ErrorMessage="Nombres requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Apellidos:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="ApellidosTextBox3" runat="server" Width="232px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ApellidosTextBox3" ErrorMessage="Apellidos requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="EmailTextBox4" runat="server" Width="232px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TelefonoTextBox5" runat="server" Width="129px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TelefonoTextBox5" ErrorMessage="Formato telefono invalido" ForeColor="Red" ValidationExpression="((\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Celular:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="CelularTextBox6" runat="server" Width="129px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="CelularTextBox6" ErrorMessage="Formato celular invalido" ForeColor="Red" ValidationExpression="((\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="Direccion:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="DireccionTextBox7" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label9" runat="server" Text="Cedula:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="CedulaTextBox8" runat="server" Width="160px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="CedulaTextBox8" ErrorMessage="Formato cedula invalido" ForeColor="Red" ValidationExpression="((\d{3}-))?\d{7}-\d{1}">*</asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="NuevoButton1" runat="server" Text="Nuevo" OnClick="NuevoButton1_Click" />
                <asp:Button ID="GuardarButton2" runat="server" Text="Guardar" OnClick="GuardarButton2_Click" />
                <asp:Button ID="EliminarButton3" runat="server" Text="Eliminar" OnClick="EliminarButton3_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

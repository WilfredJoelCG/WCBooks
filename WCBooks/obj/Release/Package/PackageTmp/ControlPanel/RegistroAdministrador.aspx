<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroAdministrador.aspx.cs" Inherits="WCBooks.ControlPanel.RegistroAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:48%;">
        <tr>
            <td class="auto-style1" colspan="3">
                <h1>
                <asp:Label ID="Label1" runat="server" Text="Registro de Administradores" style="text-align: center; font-weight: 700"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="IdAdminstrador:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="IdAdministradorTextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
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
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="NuevoButton1" runat="server" Text="Nuevo" OnClick="NuevoButton1_Click" />
                <asp:Button ID="GuardarButton2" runat="server" Text="Guardar" OnClick="GuardarButton2_Click" />
                <asp:Button ID="EliminarButton3" runat="server" Text="Eliminar" OnClick="EliminarButton3_Click" />
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

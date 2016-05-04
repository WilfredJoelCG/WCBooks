<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="WCBooks.ControlPanel.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
    .auto-style2 {
        width: 341px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:73%; margin-right: 0px;">
        <tr>
            <td colspan="3">
                <h1>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Registro de Usuarios" style="font-weight: 700; text-align: center"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="IdUsuario:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="IdUsuarioTextBox" runat="server" style="margin-left: 0px" Width="182px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Nombre Usuario:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="NombreUsuarioTextBox2" runat="server" Width="177px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NombreUsuarioTextBox2" ErrorMessage="Nombre Usuario requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Clave:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="ClaveTextBox3" runat="server" Width="173px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ClaveTextBox3" ErrorMessage="Clave requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Estado:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:CheckBox ID="EstadoCheckBox1" runat="server" Text="Activo" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Tipo de Usuario:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="TiposUsuariosDropDownList1" runat="server" Width="178px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
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

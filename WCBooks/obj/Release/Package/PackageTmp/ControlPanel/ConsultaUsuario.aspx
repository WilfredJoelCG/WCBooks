<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuario.aspx.cs" Inherits="WCBooks.ControlPanel.ConsultaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:66%;">
        <tr>
            <td colspan="3">
                <h1>
                <asp:Label ID="Label1" runat="server" Text="Consulta de Usuarios" style="font-weight: 700; text-align: center"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Filtar por:"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="BuscarPorDropDownList1" runat="server">
                    <asp:ListItem Value="0">IdUsuario</asp:ListItem>
                    <asp:ListItem Value="1">Nombre Usuario</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="BuscarPorTextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="BuscarButton1" runat="server" Text="Buscar" OnClick="BuscarButton1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="ConsultaGridView1" runat="server">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="IdUsuario" DataNavigateUrlFormatString="~/ControlPanel/RegistroUsuario.aspx?IdUsuario={0}" Text="Editar" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

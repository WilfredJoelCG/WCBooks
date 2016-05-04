<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaAdministtrador.aspx.cs" Inherits="WCBooks.ControlPanel.ConsultaAdministtrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <table style="width:66%;">
        <tr>
            <td colspan="3">
                <h1>
                <asp:Label ID="Label1" runat="server" Text="Consulta de Administradores" style="font-weight: 700; text-align: center"></asp:Label>
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
                    <asp:ListItem Value="0">IdAdministrador</asp:ListItem>
                    <asp:ListItem Value="1">Nombres</asp:ListItem>
                    <asp:ListItem Value="2">Apellidos</asp:ListItem>
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
                        <asp:HyperLinkField DataNavigateUrlFields="IdAdministrador" DataNavigateUrlFormatString="~/ControlPanel/RegistroAdministrador.aspx?IdAdministrador={0}" Text="Editar" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

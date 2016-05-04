<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroPedido.aspx.cs" Inherits="WCBooks.ControlPanel.RegistroPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
        .auto-style2 {
            width: 50px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            width: 50px;
            height: 22px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            width: 50px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table style="width:53%;">
        <tr>
            <td class="auto-style1" colspan="3">
                <h1>
                <asp:Label ID="Label1" runat="server" Text="Registro de Pedidos" style="text-align: center; font-weight: 700"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="IdPedido:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="IdPedidoTextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Cliente:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ClientesDropDownList" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Fecha:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="FechaTextBox3" runat="server" CssClass="datepicker" Width="232px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FechaTextBox3" ErrorMessage="Fecha requerida" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Total:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TotalTextBox4" runat="server" Width="232px"></asp:TextBox>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Libro:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="LibrosDropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Cantidad:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="CantidadTextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                Precio:</td>
            <td class="auto-style5">
                <asp:TextBox ID="PrecioTextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="AgregarButton1" runat="server" Text="Agregar" OnClick="AgregarButton1_Click" />
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
               
                 <asp:GridView ID="DetalleGridView" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
               
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="NuevoButton1" runat="server" Text="Nuevo" OnClick="NuevoButton1_Click" />
                <asp:Button ID="GuardarButton2" runat="server" Text="Guardar" OnClick="GuardarButton2_Click" />
                <asp:Button ID="EliminarButton3" runat="server" Text="Eliminar" OnClick="EliminarButton3_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroLibro.aspx.cs" Inherits="WCBooks.ControlPanel.RegistroLibro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 842px;
        }
        .auto-style2 {
            width: 264px;
        }
        .auto-style3 {
            width: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:39%;">
        <tr>
            <td class="auto-style1" colspan="3">
                <h1>
                <asp:Label ID="Label1" runat="server" Text="Registro de Libros" style="text-align: center; font-weight: 700"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="IdLibro:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="IdLibroTextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Titulo:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TituloTextBox2" runat="server" Width="234px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TituloTextBox2" ErrorMessage="Titulo requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Autor/es:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="AutorTextBox3" runat="server" Width="232px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AutorTextBox3" ErrorMessage="Autor/es requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Edicion:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="EdicionTextBox4" runat="server" Width="232px"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Genero:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="GeneroDropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Imagen:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload" runat="server" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Precio:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="PrecioTextBox7" runat="server" Width="226px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PrecioTextBox7" ErrorMessage="Precio requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Categoria:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="CategoriaDropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="NuevoButton1" runat="server" Text="Nuevo" OnClick="NuevoButton1_Click" />
                <asp:Button ID="GuardarButton2" runat="server" Text="Guardar" OnClick="GuardarButton2_Click" />
                <asp:Button ID="EliminarButton3" runat="server" Text="Eliminar" OnClick="EliminarButton3_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

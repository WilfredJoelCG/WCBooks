using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace WCBooks.ControlPanel
{
    public partial class RegistroPedido : System.Web.UI.Page
    {
        private Pedidos pedido = new Pedidos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                ClientesDropDownList.DataSource = Clientes.Listar("IdCliente,Nombres+' '+Apellidos as NombreCompleto", "1=1");
                ClientesDropDownList.DataValueField = "IdCliente";
                ClientesDropDownList.DataTextField = "NombreCompleto";
                ClientesDropDownList.DataBind();

                LibrosDropDownList1.DataSource = Libros.Listar("IdLibro,Titulo+' de '+Autor as LibroCompleto", "1=1");
                LibrosDropDownList1.DataValueField = "IdLibro";
                LibrosDropDownList1.DataTextField = "LibroCompleto";
                LibrosDropDownList1.DataBind();

                Session.Abandon();

                int id = 0;
                int.TryParse(Request.QueryString["IdPedido"], out id);
                if (pedido.Buscar(id))
                {

                    IdPedidoTextBox1.Text = pedido.IdPedido.ToString();
                    FechaTextBox3.Text = pedido.Fecha.ToString();
                    ClientesDropDownList.SelectedValue=pedido.IdCliente.ToString();
                    TotalTextBox4.Text = pedido.Total.ToString();

                    DetalleGridView.DataSource = pedido.PedidosDetalle;
                    DetalleGridView.DataBind();
                }
            }
        }

        private void Nuevo()
        {
            IdPedidoTextBox1.Text = "";
            TotalTextBox4.Text = "";
            CantidadTextBox1.Text = "";
            PrecioTextBox2.Text = "";
            DetalleGridView.DataSource = String.Empty;
            DetalleGridView.DataBind();
            Session["pedido"] = new Pedidos();

        }

        private void limpiarAgregar()
        {
            CantidadTextBox1.Text = "";
            PrecioTextBox2.Text = "";
        }
        protected void NuevoButton1_Click(object sender, EventArgs e)
        {
            Nuevo();
        }

        protected void GuardarButton2_Click(object sender, EventArgs e)
        {
            if (Session["pedido"] != null)
            {
                pedido = (Pedidos)Session["pedido"];
            }
            try
            {
                pedido.Fecha = Convert.ToDateTime(FechaTextBox3.Text);
                pedido.IdCliente = Convert.ToInt32(ClientesDropDownList.SelectedValue);
                pedido.Total = Convert.ToInt32(TotalTextBox4.Text);
            }
            catch (Exception)
            {
                throw;
            }

            if (IdPedidoTextBox1.Text == string.Empty)
            {
                if (pedido.Insertar())
                {
                    Response.Write("<script>alert('Guardado Correctamente')</script>");
                    Nuevo();

                }
                else
                {
                    Response.Write("<script>alert('Error al Guardar')</script>");
                }
              

            }
            else
            {
                int id = 0;
                int.TryParse(IdPedidoTextBox1.Text, out id);

                if (pedido.Modificar(id))
                {
                    Nuevo();

                }
            }
        }

        protected void EliminarButton3_Click(object sender, EventArgs e)
        {
           
            if (pedido.Eliminar(Convert.ToInt32(IdPedidoTextBox1.Text)))
            {
                Nuevo();
            }
        }

        protected void AgregarButton1_Click(object sender, EventArgs e)
        {
          

                if (Session["pedido"] != null)
                {
                    pedido = (Pedidos)Session["pedido"];
                }
                
                pedido.AgregarPedidosDetalles( Convert.ToInt32(LibrosDropDownList1.SelectedValue), Convert.ToDouble(CantidadTextBox1.Text), Convert.ToDouble(PrecioTextBox2.Text));


                DetalleGridView.DataSource = pedido.PedidosDetalle;
                DetalleGridView.DataBind();
               
                Session["pedido"] = pedido;
                limpiarAgregar();
        }
    }
}
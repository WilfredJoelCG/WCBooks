using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace WCBooks.ControlPanel
{
    public partial class ConsultaPedido : System.Web.UI.Page
    {
        private string join = "p join Clientes c on c.IdCliente=p.IdCliente";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConsultaGridView1.DataSource = Pedidos.Listar("p.IdPedido,c.Nombres,c.Apellidos,p.Fecha,p.Total", join + "");
                ConsultaGridView1.DataBind();
            }
        }

        protected void BuscarButton1_Click(object sender, EventArgs e)
        {
            if (BuscarPorDropDownList1.SelectedIndex == 0)
            {
                ConsultaGridView1.DataSource = Pedidos.Listar("p.IdPedido,c.Nombres,c.Apellidos,p.Fecha,p.Total ", join+" where p.IdPedido='" + BuscarPorTextBox1.Text + "'");

            }
            else if (BuscarPorDropDownList1.SelectedIndex == 1)
            {
                ConsultaGridView1.DataSource = Pedidos.Listar("p.IdPedido,c.Nombres,c.Apellidos,p.Fecha,p.Total ", join + " where c.Nombres='" + BuscarPorTextBox1.Text + "'");

            }
            else if (BuscarPorDropDownList1.SelectedIndex == 2)
            {
                ConsultaGridView1.DataSource = Pedidos.Listar("p.IdPedido,c.Nombres,c.Apellidos,p.Fecha,p.Total ", join + " where c.Apellidos='" + BuscarPorTextBox1.Text + "'");

            }
            ConsultaGridView1.DataBind();
        }
    }
}
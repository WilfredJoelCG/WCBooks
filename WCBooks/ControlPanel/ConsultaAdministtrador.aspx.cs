using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace WCBooks.ControlPanel
{
    public partial class ConsultaAdministtrador : System.Web.UI.Page
    {
        private Administradores adm = new Administradores();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConsultaGridView1.DataSource = adm.Listar("* ", "1=1");
                ConsultaGridView1.DataBind();
            }
        }

        protected void BuscarButton1_Click(object sender, EventArgs e)
        {
            if (BuscarPorDropDownList1.SelectedIndex == 0)
            {
                ConsultaGridView1.DataSource = adm.Listar("* ", " IdAdministrador='" + BuscarPorTextBox1.Text + "'");

            }
            else if (BuscarPorDropDownList1.SelectedIndex == 1)
            {
                ConsultaGridView1.DataSource = adm.Listar("* ", " Nombres='" + BuscarPorTextBox1.Text + "'");

            }
            else if (BuscarPorDropDownList1.SelectedIndex == 2)
            {
                ConsultaGridView1.DataSource = adm.Listar("* ", " Apellidos='" + BuscarPorTextBox1.Text + "'");

            }
            ConsultaGridView1.DataBind();
        
        }
    }
}
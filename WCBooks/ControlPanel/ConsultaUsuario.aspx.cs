using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WCBooks.ControlPanel
{
    public partial class ConsultaUsuario : System.Web.UI.Page
    {
        Usuarios usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = new Usuarios();
            if (!IsPostBack)
            {
                ConsultaGridView1.DataSource = usuario.Listar("IdUsuario, NombreUsuario,Clave,Estado,IdTiposUsuario ", "1=1");
                ConsultaGridView1.DataBind();
            }
        }

        protected void BuscarButton1_Click(object sender, EventArgs e)
        {
            if (BuscarPorDropDownList1.SelectedIndex == 0)
            {
                ConsultaGridView1.DataSource = usuario.Listar("IdUsuario, NombreUsuario,Clave,Estado,IdTiposUsuario ", " IdUsuario='"+BuscarPorTextBox1.Text+"'");
            
            }
            else if(BuscarPorDropDownList1.SelectedIndex == 1)
            {
                ConsultaGridView1.DataSource = usuario.Listar("IdUsuario, NombreUsuario,Clave,Estado,IdTiposUsuario ", " NombreUsuario='" + BuscarPorTextBox1.Text + "'");
            
            }
            ConsultaGridView1.DataBind();
        }
    }
}
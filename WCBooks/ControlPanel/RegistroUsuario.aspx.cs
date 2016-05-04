using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WCBooks.ControlPanel
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        private Usuarios usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = new Usuarios();
            if (!IsPostBack)
            {
                int id = 0;
                int.TryParse(Request.QueryString["IdUsuario"], out id);
                if (usuario.Buscar(id))
                {
                    IdUsuarioTextBox.Text = usuario.IdUsuario.ToString();
                    NombreUsuarioTextBox2.Text = usuario.NombreUsuario;
                    ClaveTextBox3.Text = usuario.Clave;
                    if (usuario.Estado == 0 )
                    {
                        EstadoCheckBox1.Checked = false;
                    }
                    else if (usuario.Estado == 1 )
                    {
                        EstadoCheckBox1.Checked = true;
                    }
                    TiposUsuariosDropDownList1.SelectedValue = usuario.IdTiposUsuario.ToString();

                }


                TiposUsuariosDropDownList1.DataSource = TiposDeUsuarios.Listar("IdTiposUsuario,Descripcion", " 1=1");
                TiposUsuariosDropDownList1.DataValueField = "IdTiposUsuario";
                TiposUsuariosDropDownList1.DataTextField = "Descripcion";
                TiposUsuariosDropDownList1.DataBind();
            }
        }

        private void Nuevo() 
        {
            IdUsuarioTextBox.Text = " ";
            NombreUsuarioTextBox2.Text = " ";
            ClaveTextBox3.Text = " ";
            EstadoCheckBox1.Checked = false;
        }

        protected void NuevoButton1_Click(object sender, EventArgs e)
        {
            Nuevo();
        }

        protected void GuardarButton2_Click(object sender, EventArgs e)
        {
            usuario.NombreUsuario = NombreUsuarioTextBox2.Text;
            usuario.Clave = ClaveTextBox3.Text;
            if (EstadoCheckBox1.Checked==false){
                usuario.Estado = 0;
            }
            else if (EstadoCheckBox1.Checked == true)
            {
                usuario.Estado = 1;
            }
            usuario.IdTiposUsuario = Convert.ToInt32(TiposUsuariosDropDownList1.SelectedValue);

            int id = 0;
            int.TryParse(IdUsuarioTextBox.Text, out id);
            if (id == 0)
            {
                if (usuario.Insertar())
                {
                    Nuevo();
                }
            }
            else
            {
                usuario.IdUsuario = id;
                if (usuario.Modificar())
                {
                    Nuevo();
                }
            }
            
        }

        protected void EliminarButton3_Click(object sender, EventArgs e)
        {
            usuario.IdUsuario = Convert.ToInt32(IdUsuarioTextBox.Text);
            if (usuario.Eliminar())
            {
                Nuevo();
            }

        }
    }
}
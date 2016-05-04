using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace WCBooks.ControlPanel
{
    public partial class RegistroAdministrador : System.Web.UI.Page
    {
        private Administradores adm = new Administradores();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = 0;
                int.TryParse(Request.QueryString["IdAdministrador"], out id);
                if (adm.Buscar(id))
                {

                    IdAdministradorTextBox1.Text = adm.IdAdministrador.ToString();
                    NombresTextBox2.Text = adm.Nombres;
                    ApellidosTextBox3.Text = adm.Apellidos;
                    EmailTextBox4.Text = adm.Email;
                    TelefonoTextBox5.Text = adm.Telefono;
                    DireccionTextBox7.Text = adm.Direccion;
                    

                }



            }
        }

        protected void GuardarButton2_Click(object sender, EventArgs e)
        {
            adm.Nombres = NombresTextBox2.Text;
            adm.Apellidos = ApellidosTextBox3.Text;
            adm.Email = EmailTextBox4.Text;
            adm.Telefono = TelefonoTextBox5.Text;
            adm.Direccion = DireccionTextBox7.Text;

            if (IdAdministradorTextBox1.Text == string.Empty)
            {

                if (adm.Insertar())
                {
                    Nuevo();
                }
            }
            else
            {
                adm.IdAdministrador = Convert.ToInt32(IdAdministradorTextBox1.Text);
                if (adm.Modificar())
                {
                    Nuevo();
                }
            }
        }

        protected void EliminarButton3_Click(object sender, EventArgs e)
        {
            adm.IdAdministrador = Convert.ToInt32(IdAdministradorTextBox1.Text);
            if (adm.Eliminar())
            {
                Nuevo();
            }
        }

        private void Nuevo()
        {
            IdAdministradorTextBox1.Text = " ";
            NombresTextBox2.Text = " ";
            ApellidosTextBox3.Text = " ";
            EmailTextBox4.Text = " ";
            TelefonoTextBox5.Text = " ";
            DireccionTextBox7.Text = " ";

        }

        protected void NuevoButton1_Click(object sender, EventArgs e)
        {
            Nuevo();
        }
    }
}
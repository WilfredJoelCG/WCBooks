using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WCBooks.ControlPanel
{
    public partial class RegistroCliente : System.Web.UI.Page
    {
        private Clientes cliente;
        protected void Page_Load(object sender, EventArgs e)
        {
            cliente = new Clientes();
            Usuarios usu = new Usuarios();
           

            if (!IsPostBack)
            {
                
                int id = 0;
                int.TryParse(Request.QueryString["IdCliente"], out id);
                if (cliente.Buscar(id))
                {
                    
                    IdClienteTextBox1.Text = cliente.IdCliente.ToString();
                    NombresTextBox2.Text = cliente.Nombres;
                    ApellidosTextBox3.Text = cliente.Apellidos;
                    EmailTextBox4.Text = cliente.Email;
                    TelefonoTextBox5.Text = cliente.Telefono;
                    CelularTextBox6.Text = cliente.Celular;
                    DireccionTextBox7.Text = cliente.Direccion;
                    CedulaTextBox8.Text = cliente.Cedula ;

                }

               

            }
        }

        private void Nuevo()
        {
            IdClienteTextBox1.Text = " ";
            NombresTextBox2.Text = " ";
            ApellidosTextBox3.Text = " ";
            EmailTextBox4.Text = " ";
            TelefonoTextBox5.Text = " ";
            CelularTextBox6.Text = " ";
            DireccionTextBox7.Text = " ";
            CedulaTextBox8.Text = " ";
        }

        protected void NuevoButton1_Click(object sender, EventArgs e)
        {
            Nuevo();
        }

        protected void GuardarButton2_Click(object sender, EventArgs e)
        {
            cliente.Nombres = NombresTextBox2.Text;
            cliente.Apellidos = ApellidosTextBox3.Text;
            cliente.Email = EmailTextBox4.Text;
            cliente.Telefono = TelefonoTextBox5.Text;
            cliente.Celular = CelularTextBox6.Text;
            cliente.Direccion = DireccionTextBox7.Text;
            cliente.Cedula = CedulaTextBox8.Text;



            if (IdClienteTextBox1.Text == string.Empty)
            {
                if (cliente.Insertar())
                {
                    Nuevo();
                }
            }
            else
            {
                cliente.IdCliente = Convert.ToInt32(IdClienteTextBox1.Text);
                if (cliente.Modificar())
                {
                    Nuevo();
                }
            }
            
        }

        protected void EliminarButton3_Click(object sender, EventArgs e)
        {
           cliente.IdCliente = Convert.ToInt32(IdClienteTextBox1.Text);
            if (cliente.Eliminar())
            {
                Nuevo();
            }

        }


    
    }
}
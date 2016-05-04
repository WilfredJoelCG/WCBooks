using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Web.Security;
namespace WCBooks
{
    public partial class Login : System.Web.UI.Page
    {
        private Usuarios usu = new Usuarios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (usu.Autenticar(UsuarioTextBox.Text, PassTextBox.Text))
            {
                //Session["usuario"] =NombreUsuarioTextBox.Text;
                FormsAuthentication.RedirectFromLoginPage(UsuarioTextBox.Text, true);
                HttpContext.Current.Response.Redirect("/ControlPanel/Inicio.aspx", true);
            }
            else
            {

            }
        }
    }
}
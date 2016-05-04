using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace WCBooks.ControlPanel
{
    public partial class RegistroLibro : System.Web.UI.Page
    {
        private Libros libros;
        protected void Page_Load(object sender, EventArgs e)
        {
            libros = new Libros();

             if (!IsPostBack)
            {
                int id = 0;
                int.TryParse(Request.QueryString["IdLibro"], out id);
                if (libros.Buscar(id))
                {
                    IdLibroTextBox1.Text = libros.IdLibro.ToString();
                    TituloTextBox2.Text = libros.Titulo;
                    AutorTextBox3.Text = libros.Autor;
                    EdicionTextBox4.Text = libros.Edicion;
                    PrecioTextBox7.Text =  libros.Precio.ToString();
                   

                }

                  GeneroDropDownList1.DataSource = Genero.Listar("IdGenero,Descripcion", "1=1");
                  GeneroDropDownList1.DataValueField = "IdGenero";
                  GeneroDropDownList1.DataTextField = "Descripcion";
                  GeneroDropDownList1.DataBind();

                  CategoriaDropDownList1.DataSource = Categorias.Listar("IdCategoria,Descripcion", "1=1");
                  CategoriaDropDownList1.DataValueField = "IdCategoria";
                  CategoriaDropDownList1.DataTextField = "Descripcion";
                  CategoriaDropDownList1.DataBind();

            }
        }
        private void Nuevo()
        {
            IdLibroTextBox1.Text = "";
            TituloTextBox2.Text = "";
            AutorTextBox3.Text = "";
            EdicionTextBox4.Text = "";
            PrecioTextBox7.Text = "";

        }

        protected void NuevoButton1_Click(object sender, EventArgs e)
        {
            Nuevo();
        }

        protected void EliminarButton3_Click(object sender, EventArgs e)
        {
            libros.IdLibro = Convert.ToInt32(IdLibroTextBox1.Text);
            if (libros.Eliminar())
            {
                Nuevo();
            }
        }

        protected void GuardarButton2_Click(object sender, EventArgs e)
        {
            
            libros.Titulo= TituloTextBox2.Text;
            libros.Edicion = EdicionTextBox4.Text;
            libros.Precio= Convert.ToDouble(PrecioTextBox7.Text);
            libros.Genero = Convert.ToInt32(GeneroDropDownList1.SelectedValue);
            libros.IdCategoria = Convert.ToInt32(CategoriaDropDownList1.SelectedValue);
            libros.Autor = AutorTextBox3.Text;

            if (FileUpload.HasFile)
            {
                string camino = Server.MapPath("/ImagenesLibros/");
                string nombre = FileUpload.FileName;
                string extension = System.IO.Path.GetExtension(nombre).ToLower();
                if ((extension == ".jpej") || (extension == ".png"))
                {
                    try
                    {
                        if (!System.IO.Directory.Exists(camino + User.Identity.Name))
                            System.IO.Directory.CreateDirectory(camino + User.Identity.Name);
                        FileUpload.SaveAs(camino+ "\\" + nombre);
                     libros.Imagen= camino + User.Identity.Name + "\\" + nombre;
                       
                    }
                    catch (Exception)
                    {

                        //throw;
                    }
                }
            }

             int id = 0;
            int.TryParse(IdLibroTextBox1.Text, out id);
            if (id == 0)
            {
                if (libros.Insertar())
                {
                    Nuevo();
                }
            }
            else
            {
                libros.IdLibro= id;
                if (libros.Modificar())
                {
                    Nuevo();
                }
            }
            
        }

        }
    
}
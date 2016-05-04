using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Libros
    {
        public int IdLibro { get; set; }
        public string Titulo { get; set; }
        public string Autor { get; set; }
        public string Edicion { get; set; }
        public int Genero { get; set; }
        public string Imagen { get; set; }
        public double Precio { get; set; }
        public int IdCategoria { get; set; }
        private Conexion conexion = new Conexion();

        public Libros()
        {
            IdLibro = 0;
            Titulo = null;
            Autor = null;
            Edicion = null;
            Genero = 0;
            Imagen = null;
            Precio = 0;
            IdCategoria = 0;
        }

        public bool Insertar()
        {

            return conexion.EjecutarDB("insert into Libros (Titulo,Autor,Edicion,Genero,Imagen,Precio,IdCategoria) values('" + this.Titulo + "','" + this.Autor + "','" + this.Edicion + "','" + this.Genero + "','" + this.Imagen + "','" + this.Precio + "','" + this.IdCategoria+ "')");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("update Libros set  Titulo='" + this.Titulo + "', Autor='" + this.Autor + "', Edicion='" + this.Edicion + "', Genero='" + this.Genero + "', Imagen='" + this.Imagen + "', Precio='" + this.Precio + "',IdCategoria='" + this.IdCategoria + "' where IdLibro='" + this.IdLibro + "'");

        }

        public bool Eliminar()
        {
            return conexion.EjecutarDB("delete from Libros where IdLibro=" + this.IdLibro.ToString());
        }

        public bool Buscar(int id)
        {
            bool Retorno = false;
            DataTable dt = new DataTable();

            dt = conexion.BuscarDb("select * from Libros where IdLibro='" + id + "'");

            if (dt.Rows.Count > 0)
            {
                Retorno = true;
                IdLibro = (int)dt.Rows[0]["IdLibro"];
                Titulo = dt.Rows[0]["Titulo"].ToString();
                Autor = dt.Rows[0]["Autor"].ToString();
                Edicion = dt.Rows[0]["Edicion"].ToString();
                Genero = (int)dt.Rows[0]["Genero"];
                Imagen = dt.Rows[0]["Imagen"].ToString();
                Precio = (double)dt.Rows[0]["Precio"];
                IdCategoria = (int)dt.Rows[0]["IdCategoria"];

            }

            return Retorno;
        }



        public static DataTable Listar(String Campos, String FiltroWhere)
        {
            Conexion ConexionDB = new Conexion();
            return ConexionDB.BuscarDb("Select " + Campos + " from Libros where " + FiltroWhere);
        }

    }
}

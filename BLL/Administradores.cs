using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Administradores
    {
         public int IdAdministrador { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
  
        private Conexion conexion = new Conexion();

        public Administradores()
        {
            IdAdministrador = 0;
            Nombres = null;
            Apellidos = null;
            Email = null;
            Telefono = null;
            Direccion = null;
        }

        public bool Insertar()
        {

            return conexion.EjecutarDB("insert into Administradores (Nombres,Apellidos,Email,Telefono, Direccion) values('" + this.Nombres + "','" + this.Apellidos + "','" + this.Email + "','" + this.Telefono + "','" + this.Direccion + "')");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("update Administradores set  Nombres='" + this.Nombres + "', Apellidos='" + this.Apellidos + "', Email='" + this.Email+ "',Telefono='" + this.Telefono + "',Direccion='" + this.Direccion + "' where IdAdministrador='" + this.IdAdministrador + "'");

        }

        public bool Eliminar()
        {
            return conexion.EjecutarDB("delete from Administradores where IdAdministrador=" + this.IdAdministrador.ToString());
        }

        public bool Buscar(int id)
        {
            bool Retorno = false;
            DataTable dt = new DataTable();

            dt = conexion.BuscarDb("select * from Administradores where IdAdministrador='" + id + "'");

            if (dt.Rows.Count > 0)
            {
                Retorno = true;
                IdAdministrador = (int)dt.Rows[0]["IdAdministrador"];
                Nombres = dt.Rows[0]["Nombres"].ToString();
                Apellidos = dt.Rows[0]["Apellidos"].ToString();
                Email = dt.Rows[0]["Email"].ToString();
                Direccion = dt.Rows[0]["Direccion"].ToString();
                Telefono = dt.Rows[0]["Telefono"].ToString();

            }

            return Retorno;
        }



        public DataTable Listar(String Campos, String FiltroWhere)
        {
            Conexion ConexionDB = new Conexion();
            return ConexionDB.BuscarDb("Select " + Campos + " from Administradores where " + FiltroWhere);
        }
    }
}

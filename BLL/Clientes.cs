using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Clientes
    {
        public int IdCliente { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Direccion { get; set; }
        public string Cedula { get; set; }
        private Conexion conexion = new Conexion();

        public Clientes()
        {
            IdCliente = 0;
            Nombres = null;
            Apellidos = null;
            Email = null;
            Telefono = null;
            Celular = null;
            Direccion = null;
            Cedula = null;
        }

        public bool Insertar()
        {

            return conexion.EjecutarDB("insert into Clientes (Nombres,Apellidos,Email,Telefono,Celular, Direccion,Cedula) values('" + this.Nombres + "','" + this.Apellidos + "','" + this.Email + "','" + this.Telefono + "','" + this.Celular + "','"  + this.Direccion + "','" + this.Cedula + "')");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("update Clientes set  Nombres='" + this.Nombres + "', Apellidos='" + this.Apellidos + "', Email='" + this.Email +  "',Telefono='" + this.Telefono + "',Celular='" + this.Celular + "',Direccion='" + this.Direccion + "',Cedula='" + this.Cedula + "' where IdCliente='" + this.IdCliente + "'");

        }

        public bool Eliminar()
        {
            return conexion.EjecutarDB("delete from Clientes where IdCliente=" + this.IdCliente.ToString());
        }

        public bool Buscar(int id)
        {
            bool Retorno = false;
            DataTable dt = new DataTable();

            dt = conexion.BuscarDb("select * from Clientes where IdCliente='" + id + "'");

            if (dt.Rows.Count > 0)
            {
                Retorno = true;
                IdCliente = (int)dt.Rows[0]["IdCliente"];
                Nombres = dt.Rows[0]["Nombres"].ToString();
                Apellidos = dt.Rows[0]["Apellidos"].ToString();
                Email = dt.Rows[0]["Email"].ToString();
                Direccion = dt.Rows[0]["Direccion"].ToString();
                Telefono = dt.Rows[0]["Telefono"].ToString();
                Celular = dt.Rows[0]["Celular"].ToString();
                Cedula = dt.Rows[0]["Cedula"].ToString();

            }

            return Retorno;
        }



        public static DataTable Listar(String Campos, String FiltroWhere)
        {
            Conexion ConexionDB = new Conexion();
            return ConexionDB.BuscarDb("Select " + Campos + " from Clientes where " + FiltroWhere);
        }

    }
}

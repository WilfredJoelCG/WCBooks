using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    public class Usuarios
    {
        public int IdUsuario { set; get; }
        public string NombreUsuario { set; get; }
        public string Clave { set; get; }
        public int Estado { set; get; }
        public int IdTiposUsuario { set; get; }
        private Conexion conexion;

        public Usuarios()
        {
            IdUsuario = 0;
            NombreUsuario = null;
            Clave = null;
            Estado = 0;
            IdTiposUsuario = 0;
            conexion = new Conexion();
        }

        public bool Insertar()
        {
            return conexion.EjecutarDB("insert into Usuarios(NombreUsuario,Clave,Estado,IdTiposUsuario)values('"+this.NombreUsuario+"','"+this.Clave+"','"+this.Estado+"','"+this.IdTiposUsuario+"')");
        }

        public bool Eliminar()
        {
            return conexion.EjecutarDB("delete from Usuarios where IdUsuario='"+this.IdUsuario+"'");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("update Usuarios set NombreUsuario='"+this.NombreUsuario+"',Clave='"+this.Clave+"',Estado='"+this.Estado+"',IdTiposUsuario='"+this.IdTiposUsuario+"' where IdUsuario='"+this.IdUsuario+"'");
        }

        public bool Buscar(int id)
        {
            bool Retorno = false;
            DataTable dt = new DataTable();

            dt = conexion.BuscarDb("Select * from Usuarios where IdUsuario = " + id);
            if (dt.Rows.Count > 0)
            {
                Retorno = true;
                this.IdUsuario = (int)dt.Rows[0]["IdUsuario"];
                this.NombreUsuario = (string)dt.Rows[0]["NombreUsuario"];
                this.Clave = (string)dt.Rows[0]["Clave"];
                this.Estado = (int)dt.Rows[0]["Estado"];
                this.IdTiposUsuario = (int)dt.Rows[0]["IdTiposUsuario"];
            }
            return Retorno;
        }

        public Boolean Autenticar(string NombreUsuario, string Clave)
        {
            bool Retorno = false;
            DataTable dt = new DataTable();

            dt = conexion.BuscarDb("SELECT IdUsuario from Usuarios Where NombreUsuario = '" + NombreUsuario + "' And Clave = '" + Clave + "'");

            if (dt.Rows.Count > 0)
            {
                Retorno = true;
            }

            return Retorno;
        }

        public DataTable Listar(String Campos, String FiltroWhere)
        {
            Conexion ConexionDB = new Conexion();
            return ConexionDB.BuscarDb("Select " + Campos + " from Usuarios where " + FiltroWhere);
        }
    }
}

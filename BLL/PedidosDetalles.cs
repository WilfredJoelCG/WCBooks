using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class PedidosDetalles
    {

        public int IdLibro { set; get; }
        public double Precio { set; get; }
        public double Cantidad { set; get; }
 

        public PedidosDetalles( int IdLibro, double Cantidad, double Precio)
        {
            this.IdLibro = IdLibro;
            this.Precio = Precio;
            this.Cantidad = Cantidad;
        }

        public static DataTable ListaPedidos(String Campos, String FiltroWhere) 
        {
            Conexion ConexionDB = new Conexion();
            return ConexionDB.BuscarDb("Select " + Campos + " From PedidosDetalles Where " + FiltroWhere);
        }
    
    }
}

using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Pedidos
    {
        
        public int IdPedido { get; set; }
        public int IdCliente { get; set; }
        public DateTime Fecha { get; set; }
        public Double Total { get; set; }
        public List<PedidosDetalles> PedidosDetalle { get; set; }
        Conexion conexion = new Conexion();

        public Pedidos()
        {
            this.IdPedido = 0;
            this.IdCliente = 0;
            this.Total = 0;
            PedidosDetalle = new List<PedidosDetalles>();
        }

        public bool Insertar()
        {
            string comando = " ";
            comando = "Insert Into Pedidos(IdCliente,Fecha,Total ) Values (" + IdCliente + ",'" + Fecha.ToString("MM/dd/yyyy hh:mm:ss") + "'," + Total + ");";

                foreach (PedidosDetalles detalle in PedidosDetalle)
                {
                    comando += " Insert into PedidosDetalles (IdPedido, IdLibro, Cantidad, Precio) Values((Select max(IdPedido) as IdPedido from Pedidos)," + detalle.IdLibro + "," + detalle.Cantidad + "," + detalle.Precio + ");";
                }

                return conexion.EjecutarDB(comando);
        }

        public bool Modificar(int IdPedido)
        {
            string comando;
            comando = "Update Pedidos Set IdCliente=" + IdCliente + ", Total = '" + Total + "' Where IdPedido =" + IdPedido + " ;";

            conexion.EjecutarDB("Delete From  PedidosDetalles Where IdPedido = " + IdPedido);

            foreach (PedidosDetalles detalle in PedidosDetalle)
            {
                comando += " Insert into PedidosDetalles (IdPedido, IdLibro, Cantidad, Precio) Values(" + IdPedido + "," + detalle.IdLibro  + "," + detalle.Cantidad +","+detalle.Precio+ ");";
            }

            return conexion.EjecutarDB(comando);
        }

        public bool Eliminar(int IdPedido)
        {
            conexion.EjecutarDB("delete from PedidosDetalles where IdPedido = '" + IdPedido + "' ");
            return conexion.EjecutarDB("Delete from Pedidos where IdPedido ='" + IdPedido + "' ");
        }


        public bool Buscar(int Id)
        {
            bool mensaje = false;
            DataTable dt;
            DataTable dtDetalle;

            dt = conexion.BuscarDb("select * from Pedidos where IdPedido = " + Id);
            
            if (dt.Rows.Count > 0)
            {
                mensaje = true;
                dtDetalle = conexion.BuscarDb("select * from PedidosDetalles where IdPedido = " + Id);
                this.IdPedido = (int)dt.Rows[0]["IdPedido"];
                this.IdCliente = (int)dt.Rows[0]["IdCliente"];
                this.Fecha = (DateTime)dt.Rows[0]["Fecha"];
                this.Total = (double)dt.Rows[0]["Total"];

                PedidosDetalle.Clear();
                foreach (DataRow row in dtDetalle.Rows)
                {
                    AgregarPedidosDetalles((int)row["IdLibro"], (double)row["Cantidad"],(double)row["Precio"]);
                }
            }

            return mensaje;
        }

        public static DataTable Listar(String Campos, String FiltroWhere)
        {
            Conexion ConexionDB = new Conexion();
            return ConexionDB.BuscarDb("Select " + Campos + " From Pedidos " + FiltroWhere);
        }

        public void AgregarPedidosDetalles( int IdLibro, double Cantidad, double Precio)
        {
            PedidosDetalle.Add(new PedidosDetalles( IdLibro, Cantidad, Precio));
        }

    }
}

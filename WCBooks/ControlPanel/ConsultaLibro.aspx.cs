﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace WCBooks.ControlPanel
{
    public partial class ConsultaLibro : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConsultaGridView1.DataSource = Libros.Listar("* ", "1=1");
                ConsultaGridView1.DataBind();
            }
        }

        protected void BuscarButton1_Click(object sender, EventArgs e)
        {
            if (BuscarPorDropDownList1.SelectedIndex == 0)
            {
                ConsultaGridView1.DataSource = Libros.Listar("* ", " IdLibro='" + BuscarPorTextBox1.Text + "'");

            }
            else if (BuscarPorDropDownList1.SelectedIndex == 1)
            {
                ConsultaGridView1.DataSource = Libros.Listar("* ", " Titulo='" + BuscarPorTextBox1.Text + "'");

            }
            else if (BuscarPorDropDownList1.SelectedIndex == 2)
            {
                ConsultaGridView1.DataSource = Libros.Listar("* ", " Autor='" + BuscarPorTextBox1.Text + "'");

            }
            ConsultaGridView1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace prueba_colegio
{
    public partial class Alumno : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLogueado1.Text = Session["nombre"].ToString();
            lblNombreAlum.Text = Session["apellido"].ToString();
        }
    }
}

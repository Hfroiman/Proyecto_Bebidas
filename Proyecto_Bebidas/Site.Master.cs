using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Bebidas
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CerrarSesionClick (object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("InicioSesion.aspx");
        }
        protected void Registrarse (object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
        protected void IniciarSesionClick(object sender, EventArgs e)
        {
            Response.Redirect("InicioSesion.aspx");
        }
    }
}
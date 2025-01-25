using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Proyecto_Bebidas
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btningresar_Click(object sender, EventArgs e)
        {
            UsuarioNegocio Usnegocio = new UsuarioNegocio();
            Usuario usuario = new Usuario();
            try
            {
                usuario.Email = txtemail.Text;
                usuario.Contraseña = txtcontraseña.Text;

                if (controlDatosIngresados(usuario))
                {
                    if (Usnegocio.Login(usuario))
                    {
                        ///Activar Modal.
                        Session.Add("usuario", usuario);
                        if (((Dominio.Usuario)Session["usuario"]).TipoUsuario == TipoUsuario.Admin)
                        {
                            Response.Redirect("Home_Admin.aspx", false);
                        }
                        else
                        {
                            Response.Redirect("Default.aspx", false);
                        }
                    }
                    else
                    {
                        ///No existe el usuario, informar que no se puede loguear.
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool controlDatosIngresados(Usuario usuario)
        {
            int min = 8;
            int error = 0;
            if (usuario.Email == "")
            {
                ///INGRESAR EMAIL
                ///error++;
            }
            if (usuario.Contraseña.Length < min)
            {
                ///NNO CUMPLE CON REGLA DE SER MAYOR A 8 CARACTERES.
                ///error++;
            }
            if (error==0)
            {
                return true;
            }
            return false;
        }
    }
}
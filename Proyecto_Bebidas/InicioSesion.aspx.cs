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
            alert.Visible = false;
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
                            alert.Text = "HAS INGRESADO COMO ADMIN";
                            alert.Visible = true;
                        }
                        else
                        {
                            Response.Redirect("Default.aspx", false);
                            alert.Text = "HAS INGRESADO CORRECTAMENTE";
                            alert.Visible = true;
                        }
                    }
                    else
                    {
                        ///No existe el usuario, informar que no se puede loguear.
                        alert.Text = "Error en los datos ingresados.";
                        alert.Visible = true;
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
            if (usuario.Email == "")
            {
                ///INGRESAR EMAIL
                alert.Text = "DEBES INGRESAR UN EMAIL.";
                alert.Visible = true;
                return false;
            }
            /*if (usuario.Contraseña.Length < min)
            {
                alert.Text = "ERROR EN LA CONTRASEÑA, MINIMO 8 CARACTERES";
                alert.Visible = true;
                return false;
            }*/
            return true;
        }
    }
}
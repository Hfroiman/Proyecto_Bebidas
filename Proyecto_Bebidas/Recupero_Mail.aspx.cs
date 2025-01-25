using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Proyecto_Bebidas
{
    public partial class Recupero_Mail : System.Web.UI.Page
    {
        String Msj = "Este es el correo, con el cual te registraste en la pagina Web EMPRENDIMIENTO BEBIDAS";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Confirmardni(object sender, EventArgs e)
        {
            lblMensaje1.Visible = false;
            lblMensaje2.Visible = false;
            try
            {
                string dni = txtdni.Text;
                CorreoElectronico correo = new CorreoElectronico();
                ClienteNegocio ctenegocio = new ClienteNegocio();
                if (VerificarDNI(dni))
                {
                    string email = ctenegocio.RecuperarEmai(dni);
                    if (email != "")
                    {
                        correo.EnviarEmail(email, Msj);
                        lblMensaje1.Visible = true;
                        lblMensaje2.Visible = true;
                    }
                    else
                    {
                        lblMensaje1.Text = "No existe un email relacionado al DNI ingresado, corroborar el mismo.";
                        lblMensaje1.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private bool VerificarDNI(string dni)
        {
            try
            {
                if (dni.Length < 8)
                {
                    lblMensaje1.Text = "Debe ingresar minimo 8 digitos";
                    lblMensaje1.Visible = true;
                    return false;
                }
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
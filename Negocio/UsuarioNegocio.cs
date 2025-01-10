using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    class UsuarioNegocio
    {
        public bool Login(Usuario usuario)
        {
            Conexion conexion = new Conexion();
            try
            {
                conexion.SetearConsulta("SELECT Email, Contraseña, Tipo_Usuario, Estado FROM USUARIOS where  Email='@user' and Contraseña='@pass' and estado='2'");
                conexion.setearParametro("@user", usuario.Email);
                conexion.setearParametro("@pass", usuario.Contraseña);

                conexion.Ejecutarconsulta();
                while (conexion.Lector.Read())
                {
                    usuario.Estado = (int)conexion.Lector["Estado"];

                    int TipoUsuario = (int)conexion.Lector["TipoUsuario"];
                    switch (TipoUsuario)
                    {
                        case 2:
                            usuario.TipoUsuario = Dominio.TipoUsuario.Admin;
                            break;
                        case 1:
                            usuario.TipoUsuario = Dominio.TipoUsuario.Cliente;
                            break;
                        default:
                            break;
                    }
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conexion.Cerraconexion();
            }
        }
    }
}

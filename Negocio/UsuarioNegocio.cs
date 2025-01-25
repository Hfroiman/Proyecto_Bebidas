using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class UsuarioNegocio
    {
        public TipoUsuario TipodeUsuario(int tipo)
        {
            if (tipo == 2)
            {
                return TipoUsuario.Admin;
            }
            else
            {
                return TipoUsuario.Cliente;
            }
        }
        public bool Login(Usuario usuario)
        {
            Conexion conexion = new Conexion();
            try
            {
                conexion.SetearConsulta("SELECT Email, Contraseña, Tipo_Usuario, Estado FROM USUARIOS where Email=@user and Contraseña=@pass and estado=2");
                conexion.setearParametro("@user", usuario.Email);
                conexion.setearParametro("@pass", usuario.Contraseña);

                conexion.Ejecutarconsulta();

                while (conexion.Lector.Read())
                {
                    usuario.Estado = Convert.ToInt32(conexion.Lector["Estado"]);
                    usuario.TipoUsuario = TipodeUsuario(Convert.ToInt32(conexion.Lector["Tipo_Usuario"]));
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
        public bool SolicitarNuevoUS(Usuario usuario)
        {
            Conexion conexion = new Conexion();
            try
            {
                conexion.SetearConsulta("INSERT INTO USUARIOS (Email, Contraseña, Tipo_Usuario, Estado) VALUES ('@email','@contraseña','@tipoUs','@estado')");
                conexion.setearParametro("@email", usuario.Email);
                conexion.setearParametro("@contraseña", usuario.Contraseña);
                conexion.setearParametro("@tipoUs", usuario.TipoUsuario);
                conexion.setearParametro("@estado", usuario.Estado);

                conexion.Ejecutarconsulta();
                while (conexion.Lector.Read())
                {
                    usuario.Estado = (int)conexion.Lector["Estado"];
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

        public int ModificarPassword(Usuario usuario, string nuevaclave)
        {
            Conexion conexion = new Conexion();
            try
            {
                conexion.SetearConsulta("update USUARIOS set Contraseña='"+ nuevaclave +"' where Email='@email' and Contraseña='@email'and Estado=1");
                conexion.setearParametro("@email", usuario.Email);
                conexion.setearParametro("@contraseña", usuario.Contraseña);

                return conexion.ejecutarAccion();
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
        public bool Elminar(Usuario usuario)
        {
            return true;
        }
    }
}

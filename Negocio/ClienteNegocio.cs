using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ClienteNegocio
    {
        public bool Agregar()
        {
            return true;
        }
        public bool Modificar()
        {
            return true;
        }
        public bool Eliminar()
        {
            return true;
        }
        public string RecuperarEmai(String dni)
        {
            Conexion conexion = new Conexion();
            Cliente cte = new Cliente();
            try
            {
                conexion.SetearConsulta("SELECT Email FROM CLIENTES where DNI=@DNI and estado=2");
                conexion.setearParametro("@DNI", dni);

                conexion.Ejecutarconsulta();

                while (conexion.Lector.Read())
                {
                    return cte.Email = (string)conexion.Lector["Email"];
                }
                String vacio = "";
                return vacio;
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


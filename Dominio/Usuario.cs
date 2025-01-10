using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public enum TipoUsuario
    {
        Cliente = 1,
        Admin = 2
    }
    public class Usuario
    {
        public string Email { get; set; }
        public string Contraseña { get; set; }
        public TipoUsuario TipoUsuario { get; set; }
        public int Estado { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Venta
    {
        public string Numero_Venta { get; set; }
        public string DNI_Cte { get; set; }
        public DateTime Fecha { get; set; }
        public string Codigo_Venta { get; set; }
        public float Total { get; set; }
        public string Observaciones { get; set; }
        public int Estado { get; set; }
    }
}

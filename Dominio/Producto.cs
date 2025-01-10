using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Producto
    {
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Codigo_Categoria { get; set; }
        public float Precio_Compra { get; set; }
        public float Precio_Venta { get; set; }
        public int Stock { get; set; }
        public int Stock_Minimo { get; set; }
        public int Estado { get; set; }
    }
}

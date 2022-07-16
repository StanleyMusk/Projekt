using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Obiekty
{
    public class Produkt
    {
        [Key]
        public int id_produkt { get; set; }

        public string nazwa { get; set; }
        public int cena { get; set; }
        public int ilosc { get; set; }

        public override string ToString()
        {
            return $"{id_produkt} {nazwa} {cena} {ilosc}";
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Obiekty
{
    public class Klient
    {
        [Key]
        public int id_klient { get; set; }
        public string imie { get; set; }

        public string nazwisko { get; set; }
        public string mail { get; set; }
        public string telefon { get; set; }

        public override string ToString()
        {
            return $"{id_klient} {imie} {nazwisko} {mail} {telefon}";
        }

    }
}

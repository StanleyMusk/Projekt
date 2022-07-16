using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Obiekty
{
    public class Pracownik
    {
        [Key]
        public int id_pracownik { get; set; }
        public string imie { get; set; }
        public string nazwisko { get; set; }

        public override string ToString()
        {
            return $"{id_pracownik} {imie} {nazwisko}"; 
        }
    }
}

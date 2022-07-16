using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Obiekty
{
    public class Zamowienie
    {
        [Key]
        public int id_zamowienia { get; set; }
        
        public int id_pracownik { get; set; }  

        public int id_produkt { get; set; }

        public int id_klient { get; set; }
        public int ilosc { get; set; }
        public string stan { get; set; }

        //public Pracownik Pracownik { get; set; }

        //public  Klient Klient { get; set; }

        //public Produkt Produkt { get; set; }

        public override string ToString()
        {
            return $"{id_zamowienia} {id_pracownik} {id_produkt} {id_klient} {ilosc} {stan}";
        }

    }
}

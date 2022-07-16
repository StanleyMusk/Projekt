using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;


namespace Obiekty
{
    public class ProjektContext : DbContext
    {
        public DbSet<Klient> Klient { get; set; }
        public DbSet<Pracownik> Pracownik { get; set; }
        
        public DbSet<Produkt> Produkt { get; set; }

        public DbSet<Zamowienie> Zamowienie { get; set; }

        public string ConnectionString { get; }

        public ProjektContext(string connectionString)
        {
            this.ConnectionString = connectionString;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(this.ConnectionString);
        }
    }
}

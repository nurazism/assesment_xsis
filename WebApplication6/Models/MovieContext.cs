using Microsoft.EntityFrameworkCore;

namespace WebApplication6.Models
{
    public class MovieContext : DbContext
    {
        public MovieContext(DbContextOptions<MovieContext> options) : base(options)
        {

        }

        public virtual DbSet<Movie> Movies { get; set; }
        public virtual DbSet<UserModels> User { get; set; }
    }
}

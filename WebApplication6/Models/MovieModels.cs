using System.ComponentModel.DataAnnotations;

namespace WebApplication6.Models
{
    public class Movie
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(maximumLength: 100, MinimumLength = 2, ErrorMessage = "Movie Title must be more than 2 letters")]
        public string Title { get; set; } = string.Empty;

        public string Description { get; set; } = string.Empty;

        public float Rating { get; set; } = 0;
        public string Image { get; set; } = string.Empty;

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; } = DateTime.Now;
    }
    public class MovieJson
    {
        public int Id { get; set; }
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public float Rating { get; set; } = 0;
        public string Image { get; set; } = string.Empty;
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; } = DateTime.Now;
    }
}

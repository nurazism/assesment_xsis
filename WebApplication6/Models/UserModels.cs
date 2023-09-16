using System.ComponentModel.DataAnnotations;

namespace WebApplication6.Models
{
    public class UserModels
    {
        [Key]
        [StringLength(maximumLength: 10, MinimumLength = 2, ErrorMessage = "Username should be more than 2 letters and less than 10 letters")]
        public string Username { get; set; } = string.Empty;
        public byte[] PasswordHash { get; set; }
        public byte[] PasswordSalt { get; set; }
    }

    public class UserDto
    {
        public string Username { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
    }
}

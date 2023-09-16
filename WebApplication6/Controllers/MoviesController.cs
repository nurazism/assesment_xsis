using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication6.Models;

namespace WebApplication6.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class MoviesController : ControllerBase
    {
        private readonly MovieContext db;

        public MoviesController(MovieContext context)
        {
            db = context;
        }

        // GET: api/Movies1
        [HttpGet]
        [Route("MovieList")]
        public async Task<ActionResult<IEnumerable<Movie>>> GetMovies()
        {
            if (db.Movies == null)
            {
                return NotFound();
            }
            return await db.Movies.ToListAsync();
        }

        // GET: api/Movies1/5
        [HttpGet]
        [Route("GetMovie")]
        public async Task<ActionResult<Movie>> GetMovie(int id)
        {
            if (db.Movies == null)
            {
                return NotFound();
            }
            var movie = await db.Movies.FindAsync(id);

            if (movie == null)
            {
                return NotFound();
            }

            return movie;
        }

        // PUT: api/Movies1/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPatch]
        [Route("UpdateMovie")]
        public async Task<IActionResult> UpdateMovie(MovieJson data)
        {
            try
            {
                var editData = db.Movies.FirstOrDefault(x => x.Id == data.Id);
                if (editData == null)
                    return NotFound(new { message = "Data not found! Update failed!" });

                editData.Title = data.Title;
                editData.Description = data.Description;
                editData.Rating = data.Rating;
                editData.Image = data.Image;
                editData.UpdatedAt = DateTime.Now;

                db.SaveChanges();

                return Ok(new { message = "Data updated!", data = editData });
            }
            catch (Exception ex)
            {
                BadRequest(new { message = ex.Message, data = data });
            }

            return NoContent();
        }

        // POST: api/Movies1
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        [Route("AddMovie")]
        public async Task<ActionResult<Movie>> AddMovie(MovieJson data)
        {
            if (db.Movies == null)
            {
                return Problem("No data been added!");
            }

            Movie addData = new Movie
            {
                Title = data.Title,
                Description = data.Description,
                Rating = data.Rating,
                Image = data.Image,
                CreatedAt = DateTime.Now,
            };

            db.Movies.Add(addData);
            await db.SaveChangesAsync();

            //return CreatedAtAction("GetMovie", new { id = data.Id }, data);
            return Ok(new { message = "Data added!", data = addData });
        }

        // DELETE: api/Movies1/5
        [HttpDelete]
        [Route("DeleteMovie")]
        public async Task<IActionResult> DeleteMovie(int id)
        {
            if (db.Movies == null)
            {
                return NotFound(new { message = "No data found!" });
            }
            var movie = await db.Movies.FindAsync(id);
            if (movie == null)
            {
                return NotFound(new { message = "Could not find data with id " + id });
            }

            db.Movies.Remove(movie);
            await db.SaveChangesAsync();

            return Ok(new { message = "Data deleted!", data = movie });
        }

        private bool MovieExists(int id)
        {
            return (db.Movies?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}

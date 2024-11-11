using Microsoft.AspNetCore.Mvc;
using ss02.Models;

namespace ss02.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult GetAllProduct() {
            return View("Products");
        }
        public IActionResult GetProduct() {
            Product p = new Product
            {
                ProductId = 1,
                ProductName = "Test",
                YearRelease = 2024,
                Price = 3.144
            };
            ViewBag.Product = p;
            ViewData["productVd"] = p;
            return View();
        }
    }
}

using Microsoft.AspNetCore.Mvc;

namespace ss01.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

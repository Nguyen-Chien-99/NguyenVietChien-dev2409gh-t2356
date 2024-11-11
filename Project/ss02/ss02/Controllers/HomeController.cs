using Microsoft.AspNetCore.Mvc;
using ss02.Models;
using System.Diagnostics;

namespace ss02.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            ViewData["messageVD"] = "D? li?u trong viewData";
            ViewBag.messageVB = "D? li?u trong viewbag";
            TempData["messageTD"] = "D? li?u trong TempData";
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}

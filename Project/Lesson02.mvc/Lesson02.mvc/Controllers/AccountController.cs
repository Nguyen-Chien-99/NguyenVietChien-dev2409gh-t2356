using Lesson02.mvc.Models;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

namespace Lesson02.mvc.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            List<Account> accounts = new List<Account>
            {
                new Account()
                {
                    Id = 1,
                    Name = "Test",
                    Email = "Test@gmail.com",
                    Phone = "0987654321",
                    Address = "Hà Nội",
                    Avatar = Url.Content("~/images/Avatar/images2.jpg"),
                    Gender=1,
                    Bio="Handsome",
                    BirthDay=new DateTime(2003,9,2)
                },
                new Account()
                {
                    Id = 2,
                    Name = "Test",
                    Email = "Test@gmail.com",
                    Phone = "0987654321",
                    Address = "Hà Nội",
                    Avatar = Url.Content("~/images/Avatar/images3.jpg"),
                    Gender=1,
                    Bio="Handsome",
                    BirthDay=new DateTime(2003,3,8)
                },
                new Account()
                {
                    Id = 3,
                    Name = "Test",
                    Email = "Test@gmail.com",
                    Phone = "0987654321",
                    Address = "Hà Nội",
                    Avatar = Url.Content("~/images/Avatar/images4.jpg"),
                    Gender=1,
                    Bio="Handsome",
                    BirthDay=new DateTime(2003,6,7)
                }
            };
            ViewBag.Accounts = accounts;
            return View();
        }
        public IActionResult Profile()
        {
            Account account = new Account()
            {
                Id = 1,
                Name = "Chiến",
                Email = "chien08032003@gmail.com",
                Phone = "0987654321",
                Address = "Hà Nội",
                Avatar = Url.Content("~/images/Avatar/images2.jpg"),
                Gender = 1,
                Bio = "Chuối",
                BirthDay = new DateTime(2003, 3, 8)
            };
            ViewBag.account = account;
            return View();
        }
    }
}

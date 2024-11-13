using Microsoft.AspNetCore.Mvc;
using NetCoreMVCLab03.Models;
namespace NetCoreMVCLab03.ViewComponents
{
    public class BookViewComponent : ViewComponent
    {
        protected Book book = new Book();
        public IViewComponentResult Invoke()
        {
            var books = book.GetBookList();
            return View(books);
        }
    }
}

using Microsoft.AspNetCore.Mvc.Rendering;

namespace NetCoreMVCLab03.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int AuthorId { get; set; }
        public int GenresId { get; set; }
        public string Image { get; set; }
        public float Price { get; set; }
        public int TotalPage { get; set; }
        public string Sumary { get; set; }

        public List<Book> GetBookList()
        {
            List<Book> books = new List<Book>()
            {
                new Book()
                {
                    Id=1,
                    Title = "Chí Phèo",
                    AuthorId = 1,
                    GenresId = 1,
                    Image= "images/product/b1.jfif",
                    Price=500000,
                    TotalPage=250,
                    Sumary=""
                },
                new Book()
                {
                    Id=1,
                    Title = "Chị Dậu",
                    AuthorId = 1,
                    GenresId = 1,
                    Image="images/product/b2.jfif",
                    Price=200000,
                    TotalPage=20,
                    Sumary=""
                },
                new Book()
                {
                    Id=1,
                    Title = "Cậu Vàng",
                    AuthorId = 1,
                    GenresId = 1,
                    Image="images/product/b3.jfif",
                    Price=100000,
                    TotalPage=250,
                    Sumary=""
                },
                new Book()
                {
                    Id=1,
                    Title = "Sóng",
                    AuthorId = 1,
                    GenresId = 1,
                    Image="/images/product/b4.jfif",
                    Price=20000,
                    TotalPage=2,
                    Sumary=""
                }
            };
            return books;
        }
        public Book GetBookById(int id)
        {
            Book book = this.GetBookList().FirstOrDefault(b=>b.Id==id);
            return book;
        }
        public List<SelectListItem> Authors { get; } = new List<SelectListItem>()
        {
            new SelectListItem {Value="1",Text="Nam Cao"},
            new SelectListItem {Value="2",Text="Ngô Tất Tố" },
            new SelectListItem {Value="3",Text="Adamkhoom" },
            new SelectListItem {Value="4",Text="Xuân Quỳnh" }
        };
        public List<SelectListItem> Genres { get; } = new List<SelectListItem>()
        {
            new SelectListItem {Value="1",Text="Truyện Tranh"},
            new SelectListItem {Value="2",Text="Văn học đương đại" },
            new SelectListItem {Value="3",Text="Truyện Cười" },
            new SelectListItem {Value="4",Text="Thơ" }
        };
    }
}

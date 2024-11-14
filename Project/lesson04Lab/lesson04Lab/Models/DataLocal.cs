using System.Net.NetworkInformation;

namespace lesson04Lab.Models
{
    public class DataLocal
    {
        public static List<People> _peoples = new List<People>()
        {
            new People() {
                Id=0,
                Name="Devmaster",
                Email="Vanan9524@gmail.com",
                Phone="0327762985",
                Address="25 vũ ngọc phan",
                Avatar="/images/avatar/00.jfif",
                Birthday=Convert.ToDateTime("2003/09/28"),
                Bio="viện công nghệ devmaster",Gender=0
            },
            new People() {
                Id=1,Name="Devmaster",
                Email="Vanan9524@gmail.com",
                Phone="0327762985",
                Address="25 vũ ngọc phan",
                Avatar="/images/avatar/01.jfif",
                Birthday=Convert.ToDateTime("2003/09/28"),
                Bio="viện công nghệ devmaster",
                Gender=0
            },
             new People() {
                Id=2,Name="Devmaster",
                Email="Vanan9524@gmail.com",
                Phone="0327762985",
                Address="25 vũ ngọc phan",
                Avatar="/images/avatar/02.jfif",
                Birthday=Convert.ToDateTime("2003/09/28"),
                Bio="viện công nghệ devmaster",
                Gender=0
            },
              new People() {
                Id=3,Name="Devmaster",
                Email="Vanan9524@gmail.com",
                Phone="0327762985",
                Address="25 vũ ngọc phan",
                Avatar="/images/avatar/03.jfif",
                Birthday=Convert.ToDateTime("2003/09/28"),
                Bio="viện công nghệ devmaster",
                Gender=0
            },
               new People() {
                Id=4,Name="Devmaster",
                Email="Vanan9524@gmail.com",
                Phone="0327762985",
                Address="25 vũ ngọc phan",
                Avatar="/images/avatar/04.jfif",
                Birthday=Convert.ToDateTime("2003/09/28"),
                Bio="viện công nghệ devmaster",
                Gender=0
            },
                new People() {
                Id=5,Name="Devmaster",
                Email="Vanan9524@gmail.com",
                Phone="0327762985",
                Address="25 vũ ngọc phan",
                Avatar="/images/avatar/05.jfif",
                Birthday=Convert.ToDateTime("2003/09/28"),
                Bio="viện công nghệ devmaster",
                Gender=0
            }

        };
        public static List <People> GetPeoples()
        {
            return _peoples;
        }
        public static People ? GetPeopleById(int id)
        {
            var people = _peoples.FirstOrDefault(x => x.Id == id);
            return people;
        }
    }
}

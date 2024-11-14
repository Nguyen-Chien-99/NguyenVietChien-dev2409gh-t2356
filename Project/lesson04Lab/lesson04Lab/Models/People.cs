using System.ComponentModel.DataAnnotations;
using System.Net.NetworkInformation;

namespace lesson04Lab.Models
{
    public class People
    {
        public int Id { get; set; }
        [Display(Name="Họ và tên")]
        public string Name { get; set; }
        [Display (Name="Địa chỉ Email")]
        public string Email { get; set; }
        [Display(Name="Số điện thoại")]
        public string Phone { get; set; }
        [Display (Name="Địa chỉ nơi ở")]
        public string Address { get; set; }
        [Display(Name = "Ảnh điện thoại")]
        public string Avatar { get; set; }
        [Display(Name = "Ngày sinh")]
        public DateTime Birthday { get; set; }
        [Display(Name = "Giới thiệu bản thân")]
        public string Bio {  get; set; }
        [Display(Name = "Giới tính")]
        public byte Gender { get; set; }
    }
}

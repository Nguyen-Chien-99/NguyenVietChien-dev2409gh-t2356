class NhanVien
{
    public int MaNV { get; set; }
    public string Ten { get; set; }
    public string DiaChi { get; set; }
    public DateTime NgaySinh { get; set; }
    public decimal Luong { get; set; }
    public decimal Thuong { get; set; }


    public decimal TongLuong
    {
        get
        {
            return Luong + Thuong;
        }
    }


    public void HienThiThongTin()
    {
        Console.WriteLine($"Ma NV: {MaNV}");
        Console.WriteLine($"Ten: {Ten}");
        Console.WriteLine($"Đia chi: {DiaChi}");
        Console.WriteLine($"Ngay sinh: {NgaySinh.ToShortDateString()}");
        Console.WriteLine($"Luong: {Luong}");
        Console.WriteLine($"Thuong: {Thuong}");
        Console.WriteLine($"Tong luong: {TongLuong}");
    }
}

class Program
{
    static void Main(string[] args)
    {
        NhanVien nhanVien = new NhanVien();

        Console.Write("Nhap ma nhan vien: ");
        nhanVien.MaNV = int.Parse(Console.ReadLine());

        Console.Write("Nhap ten nhan vien: ");
        nhanVien.Ten = Console.ReadLine();

        Console.Write("Nhap đia chi: ");
        nhanVien.DiaChi = Console.ReadLine();

        Console.Write("Nhap ngay sinh (MM/DD/YYYY): ");
        nhanVien.NgaySinh = DateTime.Parse(Console.ReadLine());

        Console.Write("Nhap luong: ");
        nhanVien.Luong = decimal.Parse(Console.ReadLine());

        Console.Write("Nhap thuong: ");
        nhanVien.Thuong = decimal.Parse(Console.ReadLine());

        Console.WriteLine("\nThong tin nhan vien:");
        nhanVien.HienThiThongTin();
    }
}

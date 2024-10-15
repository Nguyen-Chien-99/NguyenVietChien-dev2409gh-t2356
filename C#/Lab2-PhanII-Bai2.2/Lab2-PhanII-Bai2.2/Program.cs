using System;

class Program
{
    static void Main(string[] args)
    {
        Console.Write("Nhap nam: ");
        int nam = int.Parse(Console.ReadLine());

        Console.Write("Nhap thang: ");
        int thang = int.Parse(Console.ReadLine());

        int soNgay = DateTime.DaysInMonth(nam, thang);

        Console.WriteLine($"So ngay trong thang {thang} nam {nam} la: {soNgay}");
    }
}


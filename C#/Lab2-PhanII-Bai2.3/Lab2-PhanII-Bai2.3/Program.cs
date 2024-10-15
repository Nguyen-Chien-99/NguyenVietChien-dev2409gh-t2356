using System;

class Program
{
    static void Main(string[] args)
    {
        Console.Write("Nhap so giay: ");
        int tongGiay = int.Parse(Console.ReadLine());

        int gio = tongGiay / 3600;
        int phut = (tongGiay % 3600) / 60;
        int giay = tongGiay % 60;

        Console.WriteLine($"Đinh dang thoi gian: {gio:D2}:{phut:D2}:{giay:D2}");
    }
}

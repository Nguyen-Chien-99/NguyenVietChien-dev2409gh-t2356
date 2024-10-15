using System;

class Program
{
    static void Main(string[] args)
    {
        Console.Write("Nhap canh a: ");
        int a = int.Parse(Console.ReadLine());

        Console.Write("Nhap canh b: ");
        int b = int.Parse(Console.ReadLine());

        Console.Write("Nhap canh c: ");
        int c = int.Parse(Console.ReadLine());

        if (a + b > c && a + c > b && b + c > a)
        {
            Console.WriteLine("a, b, c tao thanh 3 canh cua mot tam giac.");

            if (a == b && b == c)
            {
                Console.WriteLine("Tam giac đeu.");
            }
            else if (a == b || b == c || a == c)
            {
                Console.WriteLine("Tam giac can.");
            }
            else if (a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a)
            {
                Console.WriteLine("Tam giac vuong.");
            }
            else
            {
                Console.WriteLine("Tam giac thuong.");
            }
        }
        else
        {
            Console.WriteLine("a, b, c khong tao thanh mot tam giac.");
        }
    }
}

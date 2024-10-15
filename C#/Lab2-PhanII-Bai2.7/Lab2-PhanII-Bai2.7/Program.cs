using System;

class Program
{
    static void Main(string[] args)
    {
        int soHang = 10;
        for (int i = 1; i <= soHang; i++)
        {
            Console.Write(new string(' ', (soHang - i)));
            int t = i;
            //
            for (int j = 1; j <= i; j++)
            {
                Console.Write(t % 10);
                t++;
            }
            t -= 2;
            //
            for (int j = 1; j < i; j++)
            {
                Console.Write(t % 10);
                t--;
            }

            Console.WriteLine();
        }
    }
}
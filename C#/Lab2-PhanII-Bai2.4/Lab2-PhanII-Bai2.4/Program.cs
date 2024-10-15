using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Cac so co tong 3 chu so la chan trong khoang 100-999:");

        for (int i = 100; i <= 999; i++)
        {
            int hangTram = i / 100;
            int hangChuc = (i / 10) % 10;
            int hangDonVi = i % 10;

            int tong = hangTram + hangChuc + hangDonVi;

            if (tong % 2 == 0)
            {
                Console.WriteLine(i);
            }
        }
    }
}

namespace Lab5_Bai3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student st = new Student(3, 2);
            st[0] = "Nam";
            st[0, 0] = 9;
            st[0, 1] = 6.5;
            st[1] = "Long";
            st[1, 0] = 5;
            st[1, 1] = 7.5;
            st[2] = "Hanh";
            st[2, 0] = 10;
            st[2, 1] = 9.5;
            Console.WriteLine("Thong tin sinh vien");
            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("Ho va ten:" + st[i]);
                Console.Write("Diem: ");
                for (int j = 0; j < 2; j++)
                {
                    Console.Write(st[i, j] + ",");
                }
                Console.WriteLine();
            }
        }
    }
}

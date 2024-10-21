namespace Lab5_Bai1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // khai báo mảng 1 chiều
            int[] m = { 5, 8, 3, 0, 2, 1, 7, 8 };
            // duyetj mảng và in dữ liệu
            Console.WriteLine("các phần tử của mảng");
            for (int i = 0; i < m.Length; i++)
            {
                Console.WriteLine("{0}", m[i]);
            }
            // tìm phần tử lớn nhất
            int max = m[0];
            for (int i = 0; i < m.Length; i++)
            {
                if (max < m[i])
                    max = m[i];
            }
            Console.WriteLine("\nPhần tử lớn nhất:" + max);
            //kiểm tra mảng có đối xứng không
            bool kt = true;
            for (int i = 0; i < m.Length / 2; i++)
            {
                if (m[i] != m[m.Length - 1 - i])
                {
                    kt = false;
                    break;
                }
            }
            if (kt)
                Console.WriteLine("Mảng đối xứng");
            else
                Console.WriteLine("Mảng không đối xứng");
        }
    }
}

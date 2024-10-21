using System.ComponentModel.Design;

namespace Lab5_Bai5._1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.OutputEncoding = System.Text.Encoding.UTF8;
            Console.WriteLine("Tạo ứng dụng C# và thực hiện những công việc sau.");
            int[] arrays = { 11, 21, -31, 42, 24, 55, -32, -33, 67, 98 };
            int chon = 0;
            do 
            {
                menu();
                Console.Write("Mời bạn chọn");
                chon =int.Parse(Console.ReadLine());
                switch (chon)
                {
                    case 1:
                        Console.WriteLine("Tìm phần tử nhỏ nhất của mảng");
                        int min = minArrays(arrays);
                        Console.WriteLine("Min: {0}",min);
                        break;
                    case 2:
                        Console.WriteLine("Đảo ngược mảng");
                        /*Console.WriteLine("Array:{0}", string.Join("  ",arrays));
                        Array.Reverse(arrays);
                        Console.WriteLine("Reverse"+ string.Join("  ", arrays));*/
                        ReverseArray(arrays);
                        break;
                    case 3:
                        Console.WriteLine("Sắp xếp mảng tăng hoặc giảm");
                        SortArray(arrays);
                        ReverseArray(arrays);
                        break;
                    case 4:
                        Console.WriteLine("Tìm phần tử là số nguyên tố");
                        PrintPrime(arrays);
                        break;
                    case 5:
                        Console.WriteLine("In ra số lượng các số dương liên tiếp nhiều nhất");
                        int max = MaxCountPositiveNumber(arrays);
                        Console.WriteLine("Max positive number:" + max);
                        break;
                    case 6:
                        Console.WriteLine("Tính trung bình cộng các phần tử dương");
                        Average(arrays);
                        break;
                    case 7:
                        Console.WriteLine("Kiểm tra xem mảng có các phần tử âm dương đan xen nhau không?");
                        Alternating(arrays);
                        break;
                    case 8:
                        Console.WriteLine("Kết thúc");
                        break;
                }
            }while (chon != 0);
        }
        static void menu()
        {
            Console.WriteLine("==========MENU==========");
            Console.WriteLine("1- Tìm phần tử nhỏ nhất của mảng. \r\n" +
                "Đảo ngược mảng. \r\n" +
                "Sắp xếp mảng tăng hoặc giảm. \r\n" +
                "Tìm phần tử là số nguyên tố. \r\n" +
                "In ra số lượng các số dương liên tiếp nhiều nhất. \r\n" +
                "Tính trung bình cộng các phần tử dương. \r\n" +
                "Kiểm tra xem mảng có các phần tử âm dương đan xen nhau không? \r\n" +
                "Kết thúc. \n");
        }
        static int minArrays(int[] arr)
        {
            int min = arr[0];
            for (int i = 1; i < arr.Length; i++)
            {
                if (arr[i] < min)
                    min = arr[i];
            }
            return min;
        }
        static void ReverseArray(int[] arr)
        {
            Console.WriteLine("Array:{0}", string.Join("  ",arr));
            Array.Reverse(arr);
            Console.WriteLine("Reverse"+ string.Join("  ",arr));
        }
        static void SortArray(int[] arr)
        {
            Console.WriteLine("Mảng trước khi sắp:{0}", String.Join("  ", arr));
            Array.Sort(arr);
            Console.WriteLine("Sorted:{0}", String.Join ("  ",arr));
        }
        static void PrintPrime(int[] arr)
        {
            for (int i = 0; i< arr.Length; i++)
            {
                if (IsPrime(arr[i])==true)
                {
                    Console.Write("{0}", arr[i]);
                }
            }
            Console.WriteLine();
        }
        static bool IsPrime(int number)
        {
            if (number < 2)
            {
                return false;
            }
            for (int i = 2; i <= Math.Sqrt(number); i++) 
            {
                if (number % i == 0)
                {
                    return false;
                }
            }
            return true;
        }
        static int MaxCountPositiveNumber(int[] arr)
        {
            int maxCount = 0;
            int currentCount = 0;
            foreach (int num in arr)
            {
                if (num > 0)
                {
                    currentCount++;
                    if (currentCount > maxCount)
                    {
                        maxCount = currentCount;
                    }
                }
                else
                {
                    currentCount = 0; // Reset đếm khi gặp số không dương
                }
            }

            return maxCount;
        }
        static void Average(int[] arr)
        {
            int sum = 0;
            int count = 0;

            foreach (int num in arr)
            {
                if (num > 0)  // Chỉ xét các phần tử dương
                {
                    sum += num;
                    count++;
                }
            }

            if (count > 0)
            {
                // Tính trung bình cộng
                double average = (double)sum / count;
                Console.WriteLine($"Trung bình cộng các phần tử dương: {average}");
            }
            else
            {
                Console.WriteLine("Không có phần tử dương trong mảng.");
            }
        }
        static void Alternating(int[] arr)
        {
            // Kiểm tra xem mảng có phần tử âm dương đan xen không
            bool isAlternating = true;

            for (int i = 0; i < arr.Length - 1; i++)
            {
                // Kiểm tra xem hai phần tử liên tiếp có dấu trái ngược nhau không
                if ((arr[i] > 0 && arr[i + 1] > 0) || (arr[i] < 0 && arr[i + 1] < 0))
                {
                    isAlternating = false;
                    break;
                }
            }

            if (isAlternating)
            {
                Console.WriteLine("Mảng có các phần tử âm dương đan xen nhau.");
            }
            else
            {
                Console.WriteLine("Mảng không có các phần tử âm dương đan xen nhau.");
            }
        }
    }
}

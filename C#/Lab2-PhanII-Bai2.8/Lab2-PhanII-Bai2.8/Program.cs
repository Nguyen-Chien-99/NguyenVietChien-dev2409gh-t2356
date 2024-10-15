namespace Bai02_8
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.OutputEncoding = System.Text.Encoding.UTF8;
            Console.Write("Nhập số tiền gửi: ");
            double principal = Convert.ToDouble(Console.ReadLine());

            Console.Write("Nhập lãi suất hàng năm (%): ");
            double annualRate = Convert.ToDouble(Console.ReadLine());

            Console.Write("Nhập số tháng gửi: ");
            int months = Convert.ToInt32(Console.ReadLine());

            double monthlyRate = (annualRate / 12) / 100;
            double totalAmount = principal;

            Console.WriteLine("Tháng\tTiền gốc+Lãi\tLãi suất hàng tháng");
            for (int month = 1; month <= months; month++)
            {
                double interest = totalAmount * monthlyRate;
                Console.WriteLine($"{month}\t{totalAmount:C}\t{interest:C}");

                totalAmount += interest;

            }
        }
    }
}

using System;
using System.Linq;

class Student
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int Age { get; set; }

    public Student(int id, string name, int age)
    {
        Id = id;
        Name = name;
        Age = age;
    }

    public override string ToString()
    {
        return $"ID: {Id}, Name: {Name}, Age: {Age}";
    }
}

class Program
{
    static void Main()
    {
        // Khởi tạo mảng 1 chiều gồm 10 phần tử Student
        Student[] students = new Student[]
        {
            new Student(1, "John", 20),
            new Student(2, "Alice", 18),
            new Student(3, "Bob", 22),
            new Student(4, "Charlie", 19),
            new Student(5, "David", 21),
            new Student(6, "Eve", 23),
            new Student(7, "Frank", 20),
            new Student(8, "Grace", 18),
            new Student(9, "Hannah", 21),
            new Student(10, "Ivan", 19)
        };

        // Tìm phần tử student có tuổi nhỏ nhất
        Student youngestStudent = students.OrderBy(s => s.Age).First();
        Console.WriteLine("Sinh viên có tuổi nhỏ nhất:");
        Console.WriteLine(youngestStudent);

        // Sắp xếp mảng tăng dần theo tuổi sinh viên
        var sortedStudents = students.OrderBy(s => s.Age).ToArray();
        Console.WriteLine("\nMảng sinh viên sau khi sắp xếp theo tuổi tăng dần:");
        foreach (var student in sortedStudents)
        {
            Console.WriteLine(student);
        }

        // Tìm sinh viên có tuổi lớn nhất
        Student oldestStudent = students.OrderByDescending(s => s.Age).First();
        Console.WriteLine("\nSinh viên có tuổi lớn nhất:");
        Console.WriteLine(oldestStudent);
    }
}

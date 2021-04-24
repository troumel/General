using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AfdempPartA
{

    class Students
    {
        //List<Students> SList = new List<Students>();  //mallon thelei svisimo
        public List<List<Courses>> CList = new List<List<Courses>>();

        //public List<Students> GetSetStudents
        //{
        //    get { return SList; }

        //    set { SList = value; }
        //}
        public string StudentId { get; set; }
        public string Fullname { get; set; }
        public string Courses { get; set; }
        public string Assignments { get; set; }

        public Students()
        {

        }

        public Students(string studentId, string fullname, string courses, string assignments)
        {
            this.StudentId = studentId;
            this.Fullname = fullname;
            this.Courses = courses;
            this.Assignments = assignments;
        }

        public Students CreateStudents()
        {
            Console.Clear();
            Console.WriteLine();
            Console.WriteLine();
            Students std = new Students();
            List<Courses> listCourses = new List<Courses>();
            Console.Write($" Enter fullname of student: ");
            std.Fullname = Console.ReadLine();
            bool flag = true;
            while (flag)
            {
                Console.Clear();
                Console.WriteLine();
                Console.WriteLine();
                Console.WriteLine($" Select how many courses this student will be registered to: ");
                Console.WriteLine();
                Console.WriteLine(" 1) C#");
                Console.WriteLine(" 2) Java");
                Console.WriteLine(" 3) JavaScript");
                Console.WriteLine(" 4) Machine Learning");
                Console.WriteLine(" 5) Game Development");
                Console.WriteLine(" 6) Stop and return to Main Menu");
                Console.Write(" Select course to add or press 6 to stop: ");

                int.TryParse(Console.ReadLine(), out int choice);

                while (choice == 0 || choice > 6 || choice < 0)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.Write("Please choose 1, 2, 3, 4, 5 or 6: ");
                    Console.ForegroundColor = ConsoleColor.White;
                    int.TryParse(Console.ReadLine(), out choice);
                }

                Courses cor = new Courses();
                switch (choice)
                {
                    case 1:
                        cor.Name = "C#";
                        listCourses.Add(cor);
                        Console.Clear();
                        break;
                    case 2:
                        cor.Name = "Java";
                        listCourses.Add(cor);
                        break;
                    case 3:
                        cor.Name = "JavaScript";
                        listCourses.Add(cor);
                        break;
                    case 4:
                        cor.Name = "Machine Learning";
                        listCourses.Add(cor);
                        break;
                    case 5:
                        cor.Name = "Game Developement";
                        listCourses.Add(cor);
                        break;
                    case 6:
                        flag = false;
                        break;
                }  
            }
            
            
            CList.Add(listCourses);
            return std;
        }

        //public void Showstudents()
        //{
        //    Console.Clear();
        //    foreach (var item in SList)
        //    {
        //        Console.WriteLine($"Student ID: {item.StudentId} \nStudent Name: {item.Fullname} \nStudent Course: {item.Courses} \nStudent Assignment: {item.Assignments} " +
        //            $"\n----------------------------------------");
        //    }
        //    Console.WriteLine();
        //    Console.Write("Press any key to return back: ");
        //    Console.ReadKey();
        //    Console.Clear();
        //}
    }
}


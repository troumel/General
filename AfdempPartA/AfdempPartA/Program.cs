using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AfdempPartA
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Students> SList = new List<Students>();
            //List<Students> listStudents = new List<Students>();
            List<Courses> CList = new List<Courses>();

            Students std = new Students();
            Courses crs = new Courses();
            //MainMenu menu = new MainMenu();
            //menu.ShowMainMenu();
            //------------------------------------------------------------------------>>>
            bool mainMenu = true;
            while (mainMenu)
            {
                Console.Clear();
                Console.ForegroundColor = ConsoleColor.DarkGray;
                Console.WriteLine(@"
                                         _    _      _                           _
                                        | |  | |    | |                         | |
                                        | |  | | ___| | ____ ___  _ __ ___   ___| |
                                        | |/\| |/ _ \ |/  __/ _ \| '_ ` _ \ / _ \ |
                                        \  /\  /  __/ |  (_| (_) | | | | | |  __/_|
                                         \/  \/ \___|_|\____\___/|_| |_| |_|\___(_)");
                Console.WriteLine("\n");
                Console.ForegroundColor = ConsoleColor.White;
                Console.WriteLine("1) Show Entries");
                Console.WriteLine("2) Create New");
                Console.WriteLine("3) Exit\n");
                Console.Write("Select an option: ");
                int.TryParse(Console.ReadLine(), out int mainMenuChoice);

                while (mainMenuChoice == 0 || mainMenuChoice > 3 || mainMenuChoice < 0)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.Write("Please choose 1, 2 or 3: ");
                    Console.ForegroundColor = ConsoleColor.White;
                    int.TryParse(Console.ReadLine(), out mainMenuChoice);
                }
                switch (mainMenuChoice)
                {
                    case 1:
                        Console.Clear();
                        bool thisMenu = true;
                        while (thisMenu)
                        {
                            Console.WriteLine();
                            Console.WriteLine();
                            Console.WriteLine("1) Show Students");
                            Console.WriteLine("2) Show Trainers");
                            Console.WriteLine("3) Show Courses");
                            Console.WriteLine("4) Show Assignments");
                            Console.WriteLine("5) Return To Main Menu\n");
                            Console.Write("Select an option: ");
                            int.TryParse(Console.ReadLine(), out int MenuChoice);

                            while (MenuChoice == 0 || MenuChoice > 5 || MenuChoice < 0)
                            {
                                Console.ForegroundColor = ConsoleColor.Red;
                                Console.Write("Please choose 1, 2, 3, 4 or 5: ");
                                Console.ForegroundColor = ConsoleColor.White;
                                int.TryParse(Console.ReadLine(), out MenuChoice);
                            }
                            if (MenuChoice == 1)
                            {
                                ShowStudents(SList, std.CList);
                                //Showstudents();
                            }
                            else if (MenuChoice == 2)
                            {
                                Trainers tr = new Trainers();
                                tr.ShowTrainers();
                            }
                            else if (MenuChoice == 3)
                            {
                                //ShowCourses();
                            }
                            else
                            {
                                Console.Clear();
                                thisMenu = false;
                            }
                        }
                        break;
                    case 2:
                        Console.Clear();
                        Console.WriteLine();
                        Console.WriteLine();
                        //Students std = new Students();
                        Console.WriteLine("1) Create student");
                        Console.WriteLine("2) Create student using synthetic data");
                        Console.WriteLine("3) Return to Main Menu\n");
                        Console.Write("Select an option: ");
                        int.TryParse(Console.ReadLine(), out int menuChoice);

                        while (menuChoice == 0 || menuChoice > 3 || menuChoice < 0)
                        {
                            Console.ForegroundColor = ConsoleColor.Red;
                            Console.Write("Please choose 1, 2 or 3: ");
                            Console.ForegroundColor = ConsoleColor.White;
                            int.TryParse(Console.ReadLine(), out menuChoice);
                        }

                        switch (menuChoice)
                        {
                            case 1:
                                //Console.Clear();
                                SList.Add(std.CreateStudents());
                                break;
                            case 2:
                                Console.Clear();
                                Console.WriteLine("Call create new method");
                                break;
                            case 3:
                                Console.Clear();
                                //ShowMainMenu();
                                break;
                        }
                        break;
                    case 3:
                        System.Environment.Exit(1);
                        break;
                }
                
            }
        }

        static void ShowStudents(List<Students> listStudents, List<List<Courses>> listCourses)
        {
            Console.Clear();
            Console.WriteLine();
            Console.WriteLine();
            if (listStudents.Count == 0)
            {
                Console.Clear();
                Console.WriteLine(" The List is Empty");
                Console.Write(" Press any key to continue");

            }
            else
            {
                foreach (Students item in listStudents)
                {

                    Console.WriteLine($" Fullname: {item.Fullname} ");
                    
                    
                }
            //switch (lst.Count)
            //{
            //    case 0:
            //        Console.ForegroundColor = ConsoleColor.Red;
            //        Console.WriteLine(" The List is Empty");
            //        Console.Write(" (if you want to fill the List of Student go to:");
            //        Console.ForegroundColor = ConsoleColor.DarkMagenta;
            //        Console.WriteLine("  Student / Enter new student)");
            //        Console.ForegroundColor = ConsoleColor.Green;

            //        break;
            //    case (lst.Count > 0):
            //        foreach (Students item in lst)
            //        {
            //            Console.ForegroundColor = ConsoleColor.Blue;
            //            Console.Write($" {i + 1})");
            //            Console.ForegroundColor = ConsoleColor.Red;
            //            Console.Write(" Fullname: ");
            //            Console.ForegroundColor = ConsoleColor.Green;
            //            Console.Write($"{item.Fullname} |");
                        //Console.ForegroundColor = ConsoleColor.Red;
                        //Console.Write(" Lastname: ");
                        //Console.ForegroundColor = ConsoleColor.Green;
                        //Console.Write($"{item.LastName} |");
                        //Console.ForegroundColor = ConsoleColor.Red;
                        //Console.Write(" Age: ");
                        //Console.ForegroundColor = ConsoleColor.Green;
                        //Console.Write($"{item.Age} |");
                        //Console.ForegroundColor = ConsoleColor.Red;
                        //Console.Write(" ID: ");
                        //Console.ForegroundColor = ConsoleColor.Green;
                        //Console.Write($"{item.Id} | ");
                        //for (int x = 0; x < str[i].Count; x++)
                        //{
                        //    if (x < str[i].Count - 1)
                        //    {
                        //        Console.ForegroundColor = ConsoleColor.Red;
                        //        Console.Write("Courses");
                        //        Console.ForegroundColor = ConsoleColor.Green;
                        //        Console.Write($" {x + 1}: {(str[i])[x].Name} - ");
                        //    }
                        //    else
                        //    {
                        //        Console.ForegroundColor = ConsoleColor.Red;
                        //        Console.Write("Courses ");
                        //        Console.ForegroundColor = ConsoleColor.Green;
                        //        Console.WriteLine($"{x + 1}: {(str[i])[x].Name} | ");

                        //    }
                        //}
                        //i++;
                    //}
                    //break;
            }

            //Console.WriteLine("\n Type any key to return on main menu");
            //Console.Write(" ");
        }
    }
    
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AfdempPartA
{
    class Trainers
    {
        List<Trainers> listTrainers = new List<Trainers>();
        public string TrainerId { get; set; }
        public string Name { get; set; }
        public string Courses { get; set; }

        public Trainers()
        {

        }
        public Trainers(string trainerId, string name, string courses)
        {
            this.TrainerId = trainerId;
            this.Name = name;
            this.Courses = courses;
        }

        internal void ShowTrainers()
        {
            Console.Clear();
            foreach (var item in listTrainers)
            {
                Console.WriteLine($"Trainer ID: {item.TrainerId} \nTrainer Name: {item.Name} \nCourse: {item.Courses} " +
                    $"\n----------------------------------------");
            }
            Console.WriteLine();
            Console.Write("Press any key to return back: ");
            Console.ReadKey();
            Console.Clear();
        }
    }
}

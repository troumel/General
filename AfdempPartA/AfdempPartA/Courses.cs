using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AfdempPartA
{
    class Courses
    {
        List<string> CList = new List<string>() {"C#", "Java", "JavaScript", "Machine Learning", "Game Development"}; //mallon axrhsto
        public List<string> GetSetCourses
        {
            get { return CList; }

            set { CList = value; }
        }
        public string Name { get; set; }
        public string CourseID { get; set; }
        public Students Std { get; set; }
        public Trainers Tr { get; set; }

        public Courses()
        {

        }
        public Courses(string courseId, string name, Students std, Trainers tr)
        {
            this.Name = name;
            this.CourseID = courseId;
            this.Std = std;
            this.Tr = tr;
        }

        public void InitialCourses()
        {
            Trainers Chamilos = new Trainers("01", "Chamilos Mixalis", "C#");
            Students roumeliotis = new Students("101", "Roumeliotis Theodoros", "C#", "Individual Assignment Part A");
            Courses cSharp1 = new Courses("1", "C#", roumeliotis, Chamilos);
            //listCourses.Add(cSharp1);
        }
    }
}

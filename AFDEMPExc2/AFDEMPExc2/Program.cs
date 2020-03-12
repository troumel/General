using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AFDEMPExc2
{
    class Program
    {
        static void Main(string[] args)
        {
            int num1 = Convert.ToInt32(Console.ReadLine());
            int num2 = Convert.ToInt32(Console.ReadLine());
            if (num1 > num2)
                Console.WriteLine(num1);
            else
                Console.WriteLine(num2);
        }


    }
}

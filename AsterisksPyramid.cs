using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AFDEMPMisc2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Please enter the height of your pyramid: ");
            int pyramidHeight = Convert.ToInt32(Console.ReadLine());

            for (int i = 1; i <= pyramidHeight; i++)
            {
                for (int k = pyramidHeight; k >= i; k--)
                {
                    Console.Write(" ");
                }
                for (int j = 1; j <= i; j++)
                {
                    Console.Write("* ");
                }
                Console.WriteLine();
                Console.WriteLine();
            }
        }
    }
}
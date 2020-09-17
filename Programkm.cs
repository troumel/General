using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Please enter your name:");
            string userName = Console.ReadLine();
            int userAge = CheckAge();
            int userWeight = CheckWeight();
            Console.WriteLine($"Hey {userName}, it is cool to be {userAge} years old! You shoold buy a {ChekColor(userAge)} {ChekSize(userWeight)}");
        }

        static int CheckAge ()
        {
            Console.WriteLine("Please enter your age: ");
            int userAge = Convert.ToInt32(Console.ReadLine());

            while (userAge < 0 || userAge > 100)
            {
                Console.WriteLine("Please enter a valid age! ");
                userAge = Convert.ToInt32(Console.ReadLine());
            } 

            return userAge;
        }

        static int CheckWeight ()
        {
            Console.WriteLine("Please enter your weight: ");
            int userWeight = Convert.ToInt32(Console.ReadLine());

            while (userWeight < 0)
            {
                Console.WriteLine("Please enter a valid weight!");
                userWeight = Convert.ToInt32(Console.ReadLine());

            }

            return userWeight;
        }
        
        static string ChekColor (int age)
        {
            string[] colorArray = { "White", "Pink", "Red", "Green", "Blue", "Black" };

            if (age < 17)
                return colorArray[0];
            else if (age > 17 && age < 25)
                return colorArray[1];
            else if (age > 24 && age < 36)
                return colorArray[2];
            else if (age > 35 && age < 46)
                return colorArray[3];
            else if (age > 44 && age < 56)
                return colorArray[4];
            else
                return colorArray[5];
        }
        static string ChekSize (int weight)
        {
            string[] sizeArray = { "small", "medium", "large", "XL" };

            if (weight < 50)
                return sizeArray[0];

            else if (weight > 49 && weight < 65)
                return sizeArray[1];

            else if (weight > 64 && weight < 80)
                return sizeArray[2];

            else
                return sizeArray[3];
        }
    }
}


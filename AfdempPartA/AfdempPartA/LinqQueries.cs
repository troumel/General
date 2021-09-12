using System;
using System.Collections.Generic;
using System.Linq;
					
public class Program
{
	public static void Main()
	{
		List<string> heroesList = new List<string> { "D. Va", "Lucio", "Mercy", "Soldier 76", "Pharah", "Reinhardt" };

      //method syntax:
     // var result = heroesList.Where(x => x.Contains(".") || x.Contains("7")).Select(x => x);
		
		// query syntax:
		var result = from h in heroesList
			where h.Contains(".") || h.Contains("7")
			select h;
		foreach (var i in result)
		{
			Console.WriteLine(i);
		}
	}
}
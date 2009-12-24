using System;
namespace MockingCSharp
{
	public class ImplementingConcreteDependency
	{
		ClassWithoutInterface concrete;
		public ImplementingConcreteDependency()
		{
			concrete = new ClassWithoutInterface();
		}
		
		public string OutputString()
		{
			return "This is the string: - " + concrete.GetString();
		}
	}
}

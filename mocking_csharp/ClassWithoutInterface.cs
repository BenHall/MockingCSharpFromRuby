using System;

namespace MockingCSharp
{
	public class ClassWithoutInterface
	{

		public ClassWithoutInterface ()
		{
		}
		
		public string GetString()
		{   
			return "ClassWithoutInterface - unmockable";
		}
	}
}

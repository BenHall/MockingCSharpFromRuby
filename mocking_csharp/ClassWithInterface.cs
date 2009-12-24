using System;

namespace MockingCSharp
{
	public interface IInterface 
	{
		string GetString();
	}
	
	public class ClassWithInterface : IInterface
	{
		public ClassWithInterface()
		{
		}
		
		public string GetString()
		{
			return "ClassWithInterface - Mockable";	
		}
	}
}

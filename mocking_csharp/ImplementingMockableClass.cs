using System;

namespace MockingCSharp
{
	public class ImplementingMockableClass
	{
		IInterface mockedClass;
		public ImplementingMockableClass (IInterface mockable)
		{
			mockedClass = mockable;
		}
		
		public string OutputString()
		{
			return "This is the string: - " + mockedClass.GetString();
		}
	}
}

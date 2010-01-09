require 'rubygems'
require 'bin/Debug/mocking_csharp.dll'
include MockingCSharp
require 'caricature'
include Caricature
 
i = ImplementingMockableClass.new(ClassWithInterface.new)
puts i.OutputString()
 
isolation = Isolation.for(IInterface)
isolation.when_receiving(:get_string) do |exp|
    exp.return('MOCKED!!')
end
 
i = ImplementingMockableClass.new(isolation)
puts i.OutputString()


isolation2 = Isolation.for(ClassWithInterface)
isolation2.when_receiving(:get_string) do |exp|
    exp.return('MOCKED!!')
end
 
i = ImplementingMockableClass.new(isolation2)
puts i.OutputString()
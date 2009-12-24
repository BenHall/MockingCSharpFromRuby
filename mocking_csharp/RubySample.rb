require '/Users/Ben/SourceControl/mocking_csharp_from_ruby/mocking_csharp/bin/Debug/mocking_csharp.dll'
include MockingCSharp

$: << '/Users/Ben/Library/ironruby-0.9.3/lib/ironruby/gems/1.8/gems/caricature-0.7.2/lib/'
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
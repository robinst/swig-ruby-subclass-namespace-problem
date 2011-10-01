require 'base'
require 'sub'


def show(o)
  puts "SWIG type:  " + o.instance_variable_get(:@__swigtype__)
  puts "Ruby class: " + o.class.to_s
end

bar = Foo::Sub::bar
subbar = Foo::Sub::subbar

puts "------"
puts "bar"
show bar

puts "------"
puts "subbar"
show subbar

error = (bar.class == subbar.class)
exit 1 if error

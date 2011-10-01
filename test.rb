require 'base'
require 'subtag'
require 'subfile'

def show(tag)
  puts "Ruby class  : " + tag.class.to_s
  puts "__swigtype__: " + tag.instance_variable_get(:@__swigtype__)
end


file = Foo::Subfile::File.new
tag = file.tag
subtag = file.subtag

show tag
puts "-"
show subtag

error = (tag.class == subtag.class)
exit 1 if error

require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

name = "Glomb"
job = "zookeeper"
string = ERB.new "My name is <%= name%>, and I am a <%=job %>"
puts string.result(binding)

animals = {cow: 'moo', dog: 'woof', cat: 'meow'}
hash = ERB.new '
<% animals.each do |key, value| %>
   <%= "I love #{key}s, and they go #{value}" %>
<% end %>'

puts hash.result(binding)

require_relative './linked_lists'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list

list.prepend("newFirst")
puts list

puts list.size

puts list.head.value, list.tail.value

puts list.at(3).value

list.pop()

puts list

puts list.contains?('turtle')
puts list.contains?('parrot')

puts list.find("parrot")
puts list.find("turtle")

print(list.to_s, "\n")

list.insert_at("my man", 2)

puts list

list.remove_at(2)

puts list

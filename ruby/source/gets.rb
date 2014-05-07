puts "What's your name?"
yourName = gets

puts "Hello #{yourName} !"
puts "Hello %s!" %yourName.chomp
#想知道两者的区别么？
#那么把 puts命令改成p就能看的更清楚了
puts "Hello #{yourName} !"
puts "Hello %s!" %yourName.chomp

count = [1, 2, 3, 4, 5, 6, 7]
people = ['Alinx', 'Lampard', 'Xman', 'Philip']
list = [1, 'Durk', 2, 'Orange',3, 'XXX']

def foreach(list)
    for i in list
        puts "#{i}"
    end
end

foreach count
foreach people
foreach list
puts

list.each  do |item|
    puts item
end

arrayList = (1...9)
elements = []

arrayList.each do |item|
    puts item
    elements.push item
end

elements.each do |item|
    puts item
end

#########################
puts "%s" % "########################################"
while true
    puts "1 print 2 + 3"
    puts "2 print 2 - 3"
    puts "3 print 2 * 3"
    puts "Please tell me what do you want?"
    input = gets.chomp

    puts "HaHa, I will not tell you the results"
end

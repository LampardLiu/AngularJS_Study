def add a, b
    a + b
end

def sub a, b
    a - b
end

def  mul a, b
    a * b
end

def div a, b
    a / b
end

print "请输入两个数字,\n下面请输入第 1 个数字>"
a = gets.chomp

print "请输入第 2 个数字>"
b = gets.chomp

puts <<title
1 add
2 sub
3 mul
4 div
title

puts "请通过数字选择你要做的操作"
type = gets.chomp

if  type.to_i > 0 && type.to_i < 5
    case type
    when "1" then puts add(a.to_i,b.to_i)
    when "2" then puts sub(a.to_i,b.to_i)
    when "3" then puts mul(a.to_i,b.to_i)
    when "4" then puts div(a.to_i,b.to_i)
    else puts "error"			
    end
end



fileName =  ARGV.first

prompt = "> "
txt = File.open(fileName)

fileContent = txt.read()

puts "Here's your file: #{fileName}"
puts fileContent

puts <<P
"Now,  The End.
Next, We'll  wirte file"
P

puts "Type the filename again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again,'w')

txt_again.write(STDIN.gets.chomp)

txt_again.close()

puts <<P
"Now,  The End.
Next, We'll  copy file's content"
P

puts "请输入源文件"
puts prompt
file1 = STDIN.gets.chomp

puts "请输入目标文件"
puts prompt
file2 = STDIN.gets.chomp

file1Data = File.open(file1).read

file2Oper = File.open(file2,'w')
file2Oper.write(file1Data)
file2Oper.close





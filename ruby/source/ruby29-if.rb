print "Please tell your age>"
age = STDIN.gets.chomp

if age.to_i > 20
    puts "guys"
end
if age.to_i < 20 
    puts "boy"
end

#30  elsif

time = Time.new.hour

if time > 5 && time < 9
    puts "Goodmonring!"
elsif time > 22
    puts "GoodNight!"
end	
#title
def prompt
    print ">"
end

def GameOver(why)
    puts "Sorry,GameOver! because #{why}"
    Process.exit(0);
end

def GetRandNumber
    num = rand(9)
    num
end

def isLive(num)
     if num >= GetRandNumber()
          puts "You are win!"
          start
      else
          GameOver("Little")
     end
end

def  start
    puts <<title
        Please tell me a number between 0 to 9
    title
    prompt
    input = gets.chomp
    isLive input.to_i
end

puts GetRandNumber()

while  true
start	
end


require 'net/http'

pages = %w(www.baidu.com www.sina.com www.google.com)
threads = []

for page in pages 
    threads << Thread.new(page) do |url| 
        h = Net::HTTP.new(url,80)
        puts "Fecthing #{url}"
        resp = h.get('/',nil)
        puts "Get #{url} reslut: #{resp.message}"
    end
end

threads.each do |thr|
    puts "#{thr.value}:::::::::::::::#{Thread.current}"  
    puts "#{thr.value}==============================================="
    puts Thread.list
    puts "#======================================================="
    thr.join(1)
end
class Person
    attr_accessor :name, :sex, :age
    def initialize(name, sex, age)
        @name = name
        @sex = sex
        @age = age
    end

    def self.discribeSelf
         puts "Person is %s,%s,%s"  % [:name, :sex, :age]
         
         #Class Method must to use Class Attr
         #puts  "Person is #{name},#{sex},#{age}"
    end

    def tellMeWhatIDo
        yield  "#{name}"
    end

    def to_s
         puts "Person:{name:#{name},sex:#{sex},age:#{age}}"
    end
end

person = Person.new("Lampard", "man", "25");
Person.discribeSelf

puts person.name
puts person.sex
puts person.age

person.to_s

person.tellMeWhatIDo { |uname| print "Hello ",uname+".\n"}

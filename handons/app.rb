require_relative 'person'
<<<<<<< HEAD

jin = Person.new("Jin Sakai", 100, 50)
puts jin

khotun = Person.new("Khotun Khan", 500, 50)
puts khotun
=======
require_relative 'hero'

jin = Person.new("Jin Sakai", 100, 50)
puts jin
puts "\n"

khotun = Person.new("Khotun Khan", 500, 50)
puts khotun
puts "\n"
>>>>>>> 498d9ebe050a5c4269bba1c25a8f55617292da14

loop do
    jin.attack(khotun)
    puts khotun
    puts "\n"
    break if khotun.die?

    khotun.attack(jin)
    puts jin
    puts "\n"
    break if jin.die?
end
class Person
    attr_reader :name, :hitpoint, :attack_damage

<<<<<<< HEAD
    def initialize (name, hitpoint, attack_damage)
=======
    def initialize(name, hitpoint, attack_damage)
>>>>>>> 498d9ebe050a5c4269bba1c25a8f55617292da14
        @name = name
        @hitpoint = hitpoint
        @attack_damage = attack_damage
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
<<<<<<< HEAD
        other_person.take_damage(@attack_damage)
        puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
=======
        puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
>>>>>>> 498d9ebe050a5c4269bba1c25a8f55617292da14
    end

    def take_damage(damage)
        @hitpoint -= damage
    end

    def die?
        if @hitpoint <= 0
            puts "#{@name} dies"
            true
        end
    end
end
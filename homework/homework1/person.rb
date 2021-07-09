class Person
    attr_reader :name, :hitpoint, :attack_damage, :chance

    def initialize (name, hitpoint, attack_damage, chance)
        @name = name
        @hitpoint = hitpoint
        @attack_damage = attack_damage
        @chance = chance
    end
    
    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
        puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        unless other_person.deflect?
            other_person.take_damage(@attack_damage) 
            return
        end
        puts "#{other_person.name} deflects the attack"
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

    def deflect?
        rand(1..100) <= @chance
    end
end

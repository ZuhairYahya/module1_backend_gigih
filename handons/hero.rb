require_relative 'person'

class Hero < Person
    def initialize(name, hitpoint, attack_damage)
        super(name, hitpoint, attack_damage)
        @deflect_percentage = 0.8
    end

    def take_damage(damage)
        if rand < @deflect_percentage
            puts "#{@name} deflect the attack"
        else
            @hitpoint -= damage
        end
    end
end
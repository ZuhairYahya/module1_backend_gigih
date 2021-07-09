require_relative 'person'

class Heroes < Person
    def initialize (name, hitpoint, attack_damage, chance)
        super(name, hitpoint, attack_damage, chance)
    end

    def heal(other_person)
        other_person.hitpoint += 20
        puts "#{@name} heals #{other_person.name}, restoring 20 hitpoints"
    end

end
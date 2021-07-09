require_relative 'person'

class Enemies < Person
    attr_reader :attack_type

    def initialize (name, hitpoint, attack_damage, attack_type)
        super(name, hitpoint, attack_damage, 0)

        @attack_type = attack_type
    end

    def attack(other_person)
        return if other_person.nil?
        puts "#{@name} #{@attack_type} #{other_person.name} with #{@attack_damage} damage"
        unless other_person.deflect?
            other_person.take_damage(@attack_damage) 
            return
        end
        puts "#{other_person.name} deflects the attack"
    end
end
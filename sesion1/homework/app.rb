require_relative 'person'
require_relative 'heroes'
require_relative 'enemies'

jin = Heroes.new("Jin Sakai", 100, 50, 80)
yuna = Heroes.new("Yuna", 90, 45, 0)
sensei = Heroes.new("Sensei Ishikawa", 80, 60, 0)
heroes = [jin, yuna, sensei]

mongol_archer = Enemies.new("Mongol Archer", 80, 40, "shoots an arrow at")
mongol_spearman = Enemies.new("Mongol Spearman", 120, 60, "thrusts")
mongol_swordsman = Enemies.new("Mongol Swordsman", 100, 50, "slashes")
enemies = [mongol_archer, mongol_spearman, mongol_swordsman]

i = 1
until (heroes.empty? || enemies.empty?) do
    puts "========== Turn #{i} =========="
    puts "\n"

    heroes.each do |hero|
        puts hero
    end
    puts "\n"

    enemies.each do |enemy|
        puts enemy
    end
    puts "\n"

    unless jin.die?
        puts "As Jin Sakai, What do you want to do this turn?"
        puts "1) Attack an enemy"
        puts "2) Heal an ally"
        choice = gets.chomp.to_i

        case choice 
        when 1
            puts "Which enemy you want to attack?"
            puts "1) Mongol Archer"
            puts "2) Mongol Spearman"
            puts "3) Mongol Swordsman"
            choice = gets.chomp.to_i

            case choice
            when 1
                jin.attack(mongol_archer)
                enemies.delete(mongol_archer) if mongol_archer.die?
            when 2
                jin.attack(mongol_spearman)
                enemies.delete(mongol_spearman) if mongol_spearman.die?
            when 3
                jin.attack(mongol_swordsman)
                enemies.delete(mongol_swordsman) if mongol_swordsman.die?
            else
                puts "error"
                break
            end

        when 2
            puts "Which ally you want to heal?"
            puts "1) Yuna"
            puts "2) Sensei Ishikawa"
            choice = gets.chomp.to_i

            case choice
            when 1
                jin.heal(yuna)
            when 2
                jin.heal(sensei)
            else
                puts "error"
                break
            end
        else
            puts "error"
            break
        end
    end

    yuna.attack(enemies[rand(enemies.size)])
    enemies.each do |enemy|
        enemies.delete(enemy) if enemy.die?
    end

    sensei.attack(enemies[rand(enemies.size)])
    enemies.each do |enemy|
        enemies.delete(enemy) if enemy.die?
    end

    enemies.each do |enemy|
        enemy.attack(heroes[rand(heroes.size)])
        heroes.each do |hero|
            heroes.delete(hero) if hero.die?
        end
    end
    puts "\n"

    i += 1
end

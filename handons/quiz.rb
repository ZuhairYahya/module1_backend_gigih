class Grandfather
    def initialize
        puts 'In Grandfather class'
    end

    def grandfather_method
        puts 'Grandfather method call'
    end
end

class Father < Grandfather
    def initialize
        puts 'In Father class'
    end
end

class Son < Father
    def initialize
        puts 'In Son class'
    end
end

son = Son.new
son.grandfather_method
father = Father.new
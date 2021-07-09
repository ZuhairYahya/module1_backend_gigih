#Polymorphism with Data Type

class Calculator
    def add(number1, number2)
        number1 + number2
    end
end

calculator = Calculator.new
integer = calculator.add(1, 2) #passing integer as parameter
puts integer

double = calculator.add(1.23, 5.44) #passing double as parameter
puts double

string = calculator.add("1.23", "5.44") #passing string as parameter
puts string
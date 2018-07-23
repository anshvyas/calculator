
class Calculator

	def initialize()
	end

	def self.add(input)
		if input.empty?
			0
		else
			numbers = input.split(",").map { |num| num.to_i }
			numbers.inject(0){|result,element| result+element}

		end
	end

	def self.sub(input)
		if input.empty?
			0
		else
			numbers=input.split(",").map{ |num| num.to_i}
			result=numbers[0]-numbers[1]
		end
	end

	def self.mul(input)
		if input.empty?
			0
		else
			numbers = input.split(",").map { |num| num.to_i }
			numbers.inject(1){|result,element| result*element}
		end
	end

	def self.div(input)
		if input.empty?
			0
		else
			numbers = input.split(",").map { |num| num.to_i }
			result=numbers[0]/numbers[1]
		end
	end

	def self.quit()
		abort("Thank You")
	end


end

def main()
	
	puts"Welcome to Calculator. Kindly Enter Your Choice"
	puts" add - Addition"
	puts" sub - Subtraction"
	puts" mul - Multiply"
	puts" div - Divison"
	puts" quit - Exit"

	puts "Kindly Enter your choice :"
	choice = gets.chomp

	if choice == 'quit'
		Calculator.quit()
	end
	puts "Kindly Enter the numbers Separated by , :"
	numbers=gets.chomp

	case choice
	when "add"
		puts "Result #{Calculator.add(numbers)}"
	when "sub"
		puts "Result #{Calculator.sub(numbers)}"
	when "mul"
		puts "Result #{Calculator.mul(numbers)}"
	when "div"
		puts "Result #{Calculator.div(numbers)}"
	else
		puts"Sorry Wrong Choice!"	
	end

end

if __FILE__ == $0
main()
end

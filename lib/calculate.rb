
class Calculator
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
	# puts choice

	if choice == 'quit'
		quit()
	end
	puts "Kindly Enter the numbers Separated by space:"
	numbers=gets.chomp
	numbers=numbers.split(" ")
	operator1=numbers[0]
	operator2=numbers[1]

	case choice
	when "add"
		add(operator1,operator2)
	when "sub"
		subtract(operator1,operator2)
	when "mul"
		mulltiply(operator1,operator2)
	when "div"
		divide(operator1,operator2)
	else
		puts"Sorry Wrong Choice!"	
	end

end

if __FILE__ == $0
	main()
end

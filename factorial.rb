$num = 0

def input
	print "Put the number: "
	num = gets.chomp
	if !num.empty?
		num_i = num.to_i
		if num_i.is_a? Integer
			$num = num_i
			return true
		end
	end
	return false
end

def factorial(num = $num)
	if num == 1
		return 1
	else
		return factorial(num -1) * num
	end
end

puts "Let's do some factorial numbers\n"

while input
	puts factorial
end

puts "\nbye"
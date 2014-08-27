puts "Welcome to calculator.  Please enter an equation in the following format:"
puts "Number1 Operation(+ - * /) Number 2"
puts "Example: 4 + 7"

print"I want to calculate: "
entry = gets.chomp

entry_array = entry.split

num_one = entry_array[0].to_f
num_two = entry_array[2].to_f

case 
when entry_array[1]=="+"
	result = num_one + num_two
when entry_array[1]=="-"
	result = num_one - num_two
when entry_array[1]=="*"
	result = num_one * num_two
when entry_array[1]=="/"
	result = num_one / num_two
else
	result = "INVALID ENTRY, make sure to use a space between Numbers and Operators"
end

puts result




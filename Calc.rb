puts "Welcome to calculator.  Please enter an equation in the following format:"
puts "Number1 Operation Number2"
puts "Valid operations: +, -, *, /, ** (exponent), % (modulus), rad (nth root)"
puts "Example: 4 + 7"
begin
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
  when entry_array[1]=="**"
  	result = num_one ** num_two
  when entry_array[1]=="rad"
  	result = num_one ** (1.0 / num_two)
  when entry_array[1]=="%"
  	result = num_one % num_two
  else
    result = "INVALID ENTRY, make sure to use a space between Numbers and Operators."
  end
  
  puts "Result: #{result}"
  puts ""
  puts "Do you want to continue using calculator? yes - [Enter], No - \"exit\""
  entry = gets.chomp
end until entry == "exit"



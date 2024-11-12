require_relative "lib/calculator"

def display_menu
  puts "\nSimple Ruby Calculator"
  puts "Choose an operation:"
  puts "1. Add"
  puts "2. Subtract"
  puts "3. Multiply"
  puts "4. Divide"
  puts "5. Exit"
  print "Enter your choice: "
end

calculator = Calculator.new

loop do
  display_menu
  choice = gets.chomp.to_i

  break if choice == 5

  if (1..4).include?(choice)
    print "Enter the first number: "
    a = gets.chomp.to_f
    print "Enter the second number: "
    b = gets.chomp.to_f

    result = case choice
             when 1 then calculator.add(a, b)
             when 2 then calculator.subtract(a, b)
             when 3 then calculator.multiply(a, b)
             when 4 then calculator.divide(a, b)
             end

    puts "Result: #{result}"
  else
    puts "Invalid choice. Please try again."
  end
end

puts "Thank you for using the calculator!"

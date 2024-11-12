# main.rb

require_relative "lib/calculator"

def display_menu
  puts "\nEnhanced Ruby Calculator"
  puts "Choose an operation:"
  puts "1. Add"
  puts "2. Subtract"
  puts "3. Multiply"
  puts "4. Divide"
  puts "5. Square Root"
  puts "6. Exponentiation"
  puts "7. Sine"
  puts "8. Cosine"
  puts "9. Tangent"
  puts "10. Exit"
  print "Enter your choice: "
end

calculator = Calculator.new

loop do
  display_menu
  choice = gets.chomp.to_i

  break if choice == 10

  case choice
  when 1..4
    # Basic operations
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

  when 5
    # Square root
    print "Enter a number: "
    a = gets.chomp.to_f
    result = calculator.square_root(a)

  when 6
    # Exponentiation
    print "Enter the base number: "
    a = gets.chomp.to_f
    print "Enter the exponent: "
    b = gets.chomp.to_f
    result = calculator.exponentiate(a, b)

  when 7..9
    # Trigonometric functions
    print "Enter an angle in radians: "
    a = gets.chomp.to_f

    result = case choice
             when 7 then calculator.sine(a)
             when 8 then calculator.cosine(a)
             when 9 then calculator.tangent(a)
             end

  else
    puts "Invalid choice. Please try again."
    next
  end

  puts "Result: #{result}"
end

puts "Thank you for using the calculator!"

require "./converter.rb"

class Converter

  # this enable this ruby script to be run from the command output. Example - $> ruby collaboration.rb
  if __FILE__ == $PROGRAM_NAME
    program = Converter.new.main
  end

  def celsius_to_fahrenheit(celsius)
    conversion = celsius * 1.8000 +32
    return conversion
  end

  def fahrenheit_to_celsius(fahrenheit)
    conversion = (fahrenheit - 32.0) / 1.8000
    return conversion
  end

  def lb_to_kg(lb)
    conversion = (lb * 0.45359237)
    return conversion
  end

  def kg_to_lb(kg)
    conversion = (kg / 0.45359237)
    return conversion
  end

  def main
    puts "Hello World"
    begin
      choice = menu
      if choice.downcase == "a"
        puts ""
        puts "Convert Celsius to Fahrenheit"
        print "Celsius: "
        celsius = gets.chomp.to_f
        conversion = celsius_to_fahrenheit(celsius)
        puts "Fahrenheit: #{conversion}"
        puts ""

      elsif choice.downcase == "b"
        puts ""
        puts "Convert Fahrenheit to Celsius"
        print "Fahrenheit: "
        fahrenheit = gets.chomp.to_f
        conversion = fahrenheit_to_celsius(fahrenheit)
        puts "Celsius: #{conversion}"
        puts ""

      elsif choice.downcase == "c"
        puts ""
        puts "Convert lb to kg"
        print "lb: "
        lb = gets.chomp.to_f
        conversion = lb_to_kg(lb)
        puts "kg: #{conversion}"
        puts ""

      elsif choice.downcase == "d"
        puts ""
        puts "Convert kg to lb"
        print "kg: "
        kg = gets.chomp.to_f
        conversion = kg_to_lb(kg)
        puts "lb: #{conversion}"
        puts ""

      else
        puts "It's not on the above menu"
        puts ""
      end
    end until choice == "x"
  end

  def menu
    puts "A. Convert Celsius to Fahrenheit"
    puts "B. Convert Fahrenheit to Celsius"
    puts "C. Convert lb to kg"
    puts "D. Convert kg to lb"
    puts "X. To Quit"
    puts ""
    print "Enter your choice: "
    return gets.chomp.downcase
  end
end

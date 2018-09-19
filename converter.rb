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

  def is_number?(string)
    true if Float(string) rescue return false
  end

  def main
    begin
      choice               = menu
      converted_celsius    = 0
      converted_fahrenheit = 0
      converted_lb         = 0
      converted_kg         = 0

      if choice.downcase == "a"
        loop do
          puts ""
          puts "Convert Celsius to Fahrenheit"
          print "Celsius: "
          celsius = gets.chomp
          if is_number?(celsius)
            #convert
            converted_celsius = celsius.to_f
            break
          else
            # display message
            puts "Please enter a number value"
          end
        end
        conversion = celsius_to_fahrenheit(converted_celsius)
        puts "Fahrenheit: #{conversion}"
        puts ""

      elsif choice.downcase == "b"
        loop do
          puts ""
          puts "Convert Fahrenheit to Celsius"
          print "Fahrenheit: "
          fahrenheit = gets.chomp
          if is_number?(fahrenheit)
            #convert
            converted_fahrenheit = fahrenheit.to_f
            break
          else
            # display message
            puts "Please enter a number value"
          end
        end
        conversion = fahrenheit_to_celsius(converted_fahrenheit)
        puts "Celsius: #{conversion}"
        puts ""

      elsif choice.downcase == "c"
        loop do
          puts ""
          puts "Convert lb to kg"
          print "lb: "
          lb = gets.chomp
          if is_number?(lb)
            #convert
            converted_lb = lb.to_f
            break
          else
            # display message
            puts "Please enter a number value"
          end
        end
        conversion = lb_to_kg(converted_lb)
        puts "kg: #{conversion}"
        puts ""

      elsif choice.downcase == "d"
        loop do
          puts ""
          puts "Convert kg to lb"
          print "kg: "
          kg = gets.chomp
          if is_number?(kg)
            #convert
            converted_kg = kg.to_f
            break
          else
            # display message
            puts "Please enter a number value"
          end
        end
        conversion = kg_to_lb(converted_kg)
        puts "lb: #{conversion}"
        puts ""

      else
        if choice != "x"
          puts "It's not on the above menu"
          puts ""

        end
      end
    end
  end

  def menu
    puts ""
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

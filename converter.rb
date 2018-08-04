require "./converter.rb"

class Converter

  # this enable this ruby script to be run from the command output. Example - $> ruby collaboration.rb
  if __FILE__ == $PROGRAM_NAME
    program = Converter.new.main
  end

  def main
    puts "Hello World"
    choice = menu
    puts choice
  end

  def menu
    puts "A. Convert Celsius to Fahrenheit"
    puts "B. Convert Fahrenheit to Celsius"
    puts "X. To Quit"
    print "Enter your choice: "
    return gets.chomp
  end
end

require "./converter.rb"

class Converter

  # this enable this ruby script to be run from the command output. Example - $> ruby collaboration.rb
  if __FILE__ == $PROGRAM_NAME
    program = Converter.new.main
  end

  def main
    puts "Hello World"
    begin
      choice = menu
      puts choice
    end until choice == "x"
  end

  def menu
    puts "A. Convert Celsius to Fahrenheit"
    puts "B. Convert Fahrenheit to Celsius"
    puts "X. To Quit"
    print "Enter your choice: "
    return gets.chomp.downcase
  end
end

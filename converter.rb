require "./converter.rb"

class Converter

  # this enable this ruby script to be run from the command output. Example - $> ruby collaboration.rb
  if __FILE__ == $PROGRAM_NAME
    program = Converter.new.main
  end

  def main
    puts "Hello World"
  end

end

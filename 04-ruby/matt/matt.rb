class Matt
  def chat(input) 
    if question?(input)
      'sure'
    elsif shouting?(input)
      'chill out'
    elsif leek_speak?(input)
      self.alternate_letters( replace_with_numbers(input) )
    end
  end

  def replace_with_numbers(input)
    input.gsub(/[aeio]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => 0)
  end

  def leek_speak?(input)

  end

  def alternate_letters(input)
    
  end

  def question?(input)
    input.include?('?')
  end

  def shouting?(input)
    input == input.upcase
  end

end



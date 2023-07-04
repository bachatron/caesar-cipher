class Ccipher

  def check_number(number)
      # This method checks if the shift number is between a..z range.
      return number % 26 if number >= 26
      number
  end
  
  def play(string, shift)
      arr_string = string.split('')
      # We create to arrays one for upcase abc and one for downcase
      abc = ('a'..'z').to_a
      aBC = ('A'..'Z').to_a
      arr_string.map! do |letter|
          letter = if abc.include?(letter)
                      abc[check_number(abc.index(letter) + shift)]
                  elsif aBC.include?(letter)
                      aBC[check_number(aBC.index(letter) + shift)]
                  else
                      letter
                  end
      end
      arr_string.join('')
  end

end
  
#test = caesar_cipher('Hola me llamo bach!!!', 3)
#puts test
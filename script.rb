def check_number(number)
    # This method checks if the shift number is between a..z range.
    if 26 <= number
        # a..z length is 26
        number % 26
    else
        number
    end
end
  
def caesar_cipher(string, shift)
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
  
test = caesar_cipher('Hola me llamo bach!!!', 1)
puts test
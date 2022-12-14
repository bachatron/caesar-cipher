def check_number (number)
    abc = ('a'..'z').to_a
    unless abc.length <=number
        number
      else 
        number - abc.length
    end
end
  
check_number (27)
  
text = "hola me llamo bach!!!"
  
arr_text = text.split(//)

def caesar_cipher (string, index)
        string.split("").map do |letter|
        abc = ('a'..'z').to_a
        if abc.include? (letter)
            idx = abc.index(letter)
            letter = abc[idx.to_i + check_number(index)]
        end
    end
end


#new_arr_text = arr_text.map do |letter|
#    abc = ('a'..'z').to_a
#    if abc.include? (letter)
#        idx = abc.index(letter)
#        letter = abc[idx.to_i + check_number()]
#    end
#end

new_arr = caesar_cipher("hola mi nombre es bach", 50)
puts new_arr
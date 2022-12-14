abc = ('a'..'z').to_a

text = "hola me llamo bach"

arr_text = text.split("")

new_arr_text = arr_text.select do |letter|
    arr_text.include? (letter)
end

puts new_arr_text
def cipher(string, shift)
  #empty arrays
  ord_array = []
  cipher_ord_array = []
  cipher_array = []

  #convert string to a new array of downcase characters
  string_array = string.downcase.chars

  #loop through the array of characters and push the ordinal value of each character to ord_array
  for i in string_array
    ord_array.push(i.ord)
  end

  #push any character that is not a string to cipher_ord_array
  #wrap from a - z  in case i - shift is a charcter below a
  #if wrap is not needed, push i - shift
  for i in ord_array
    if i < 97 || i > 122
      cipher_ord_array.push(i)
    elsif i + shift > 122
      x = i + shift
      y = x - 122
      cipher_ord_array.push(96 + y)
    else cipher_ord_array.push(i + shift)
    end
  end

  #convert back to character and push to cipher array
  for i in cipher_ord_array
    cipher_array.push(i.chr)
  end

  #store the deciphered string into a variable
  deciphered_string = cipher_array.join('')

  puts "final encrypted message: #{deciphered_string}"
end

cipher("What a string!", 5)

def cipher(string, shift)
  #empty arrays
  ord_array = []
  cipher_ord_array = []
  cipher_array = []

  #convert string to a new array of downcase characters
  string_array = string.downcase.characters

  #loop through the array of characters and push the ordinal value of each character to ord_array
  for i in string_array
    ord_array.push(i.ord)
  end


end

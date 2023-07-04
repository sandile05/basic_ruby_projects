#dictionary array
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#convert string to downcase array
#determine if each element is included in the dictionary and if it has a  hash key
#if hash key has no value add a value => 1, if it does count the value as 1
def substrings(string, dictionary)
  hash = {}
  string_array =  string.split
  string_array.each do |i|
    dictionary.each do |s|
      if i.include?(s)
        if hash.has_key?(s)
          hash[s] += 1
        else hash[s] = 1
        end
      end
    end
  end
  puts hash

end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

puts "Enter a word to cipher"
string = gets.chomp
puts "Enter numbers of shift"
shift = gets.chomp.to_i

def c_cipher(string, key)
    #Assigns lowercase letter and converts to array
    lower_case = ('a'..'z').to_a
    #Assigns uppercase letter and converts to array
    upper_case = ('A'..'Z').to_a

    #Converts the strings into array and loop it using map
    string.chars.map do |char|
      #Checks if the characters in lowercase
      if lower_case.include?(char)
        #Add the index of the lowercase character to the key and uses modulo operator
        #to calculate it with the numbers of characters on the alphabet
        #This ensures that the exact character + key will be returned
        lower_case[(lower_case.index(char) + key) % 26]
      
      #Checks if the characters in uppercase
      elsif upper_case.include?(char)
        upper_case[(upper_case.index(char) + key) % 26]
      else
        #Returns characters that are not uppercase and lowercase
        char
      end
    #Combines all of the strings
    end.join
end

puts c_cipher(string, shift)
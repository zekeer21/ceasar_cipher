puts "Enter a word to cipher"
string = gets.chomp
puts "Enter numbers of shift"
shift = gets.chomp.to_i

def c_cipher(string, key)
    lower_case = ('a'..'z').to_a
    upper_case = ('A'..'Z').to_a
  
    string.chars.map do |char|
      if lower_case.include?(char)
        lower_case[(lower_case.index(char) + key) % 26]
      elsif upper_case.include?(char)
        upper_case[(upper_case.index(char) + key) % 26]
      else
        char
      end
    end.join
end

puts c_cipher(string, shift)
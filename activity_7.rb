def is_isogram(string)
  checker = Hash.new(0)
  string.downcase.each_char do |char|
    checker[char] += 1
    return false if checker[char] == 2
  end
  true
end

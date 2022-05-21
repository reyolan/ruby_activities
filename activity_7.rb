def is_isogram(string)
  checker = {}
  string.downcase.each_char do |char|
    return false if checker[char.to_sym]

    checker[char.to_sym] = char
  end
  true
end

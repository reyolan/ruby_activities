# Solution 1

def number_exists?
  arr = [1, 3, 5, 7, 9, 11]
  number_input = gets.chomp.to_i
  arr.each do |num|
    break true if num.equal?(number_input)
  end
  false
end
number_exists?

# Solution 2

def range
  puts 'Input a number'
  input_value = gets.chomp.to_i

  if input_value >= 0 && input_value <= 50
    'Number is between 0 and 50'
  elsif input_value >= 51 && input_value <= 100
    'Number is between 51 and 100'
  else
    'Number is not between 0 and 100'
  end
end
range

# Solution 3

def practice_while
  puts 'Type STOP to stop the loop.'
  input = gets.chomp while input != 'STOP'
  'Stopped the Loop!'
end
practice_while

# Solution 4

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

def divisible_by_two_each(array)
  result_array = []
  array.each do |num|
    result_array.push(num) if num.even?
  end
  result_array
end
divisible_by_two_each(arr)

def divisible_by_two_built_in(array)
  array.select(&:even?)
end

divisible_by_two_built_in(arr)

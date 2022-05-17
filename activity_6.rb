
def find_smallest_integer_each(arr)
  smallest = 0
  arr.each_with_index do |num, i|
    next smallest = num if i.zero?

    smallest = num if num < smallest
  end
  smallest
end

find_smallest_integer_each([34, 15, 88, 2])
find_smallest_integer_each([34, -345, -1, 100])

def find_smallest_integer_reduce(arr)
  arr.reduce do |acc, current_value|
    next current_value if current_value < acc

    acc
  end
end

find_smallest_integer_reduce([34, 15, 88, 2])
find_smallest_integer_reduce([34, -345, -1, 100])

# Iterative

def unique_in_order(iterable)
  unique_list = []
  iterable.length.times do |i|
    unique_list << iterable[i] if iterable[i] != iterable[i + 1]
  end
  unique_list
end

# Recursive

def unique_in_order(iterable)
  sliced_iterable = nil
  
  if iterable.is_a? Array
    return iterable if iterable.length == 0
    sliced_iterable = iterable.slice(1, iterable.length)
  else
    return iterable.split if iterable.length == 0
    sliced_iterable = iterable.slice(1, iterable.length).split(//)
  end
  
  iterable[0] == iterable[1] ? unique_in_order(sliced_iterable) : [iterable[0]] + unique_in_order(sliced_iterable)
end

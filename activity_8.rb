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
  sliced_iterable = if iterable.is_a? Array
                      iterable.slice(1, iterable.length)
                    else
                      iterable.slice(1, iterable.length).split(//)
                    end

  return iterable if iterable.length == 1

  iterable[0] == iterable[1] ? unique_in_order(sliced_iterable) : [iterable[0]] + unique_in_order(sliced_iterable)
end

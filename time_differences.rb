def my_min(list)
  list.each do |element|
    smaller = true
    list.each do |num|
      smaller = false if num < element
    end
    return element if smaller
  end
end

#time complexity is n^2

def my_min2(list)

  smallest = list[0]
  list.each do |element|
    smallest = element if element < smallest
  end
  smallest
end

#time complexity is n

def sub_sums(array)

  subs_arrays = []

  array.each_index do |index|
    i = index
    while i < array.length
      subs_arrays << array[index..i]
      i += 1
    end
  end

  max_sub = subs_arrays.max_by {|sub_array| sub_array.inject(:+)}

  max_sub.inject(:+)

end

#time complexity is n^3

def sub_sum2(array)
  max = 0
  current_sum = 0
  array.each do |number|
    if current_sum + number < 0
      current_sum = 0
    else
      current_sum += number
    end
    max = current_sum if current_sum > max
  end
  max
end

#time complexity is n

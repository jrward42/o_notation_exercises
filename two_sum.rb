def bad_two_sum?(array, target_sum)

  pairs = get_pairs(array)
  pairs.each do |pair|
    return true if pair[0] + pair[1] == target_sum
  end
  false
end

#n^2 + n

def get_pairs(array)
  results = []
  i = 0
  while i < array.length - 1
    j = i + 1
    while j < array.length
      results << [array[i], array[j]]
      j += 1
    end
    i += 1
  end
  results
end

#n^2

def okay_two_sum?(array, target_sum)

  i = 0
  j = array.length - 1
  #last_step = j

  while i != j
    return true if array[i]+array[j] == target_sum
    #if last_step == i
    if array[i] +array[j] > target_sum
      j-=1
    #  last_step = j if array[i] +array[j] < target_sum
    else
      i+=1
      #last_step = i if array[i] + array[j] > target_sum
    end

  end
  false
end

def pair_sum?(array, target_sum)
  possible_numbers = array.select {|i| i <= target_sum}
  hash_map = {}
  possible_numbers.each do |number|
    return true if hash_map.has_key?(target_sum - number)
    hash_map[number] = number
  end
  false
end

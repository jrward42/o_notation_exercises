def max_windowed_range(array, window_size)
  current_max_range = 0
  array.each_with_index do |num, index|
    break if index + window_size > array.length
    window = array[index...(index + window_size)]
    max = window.max
    min = window.min
    window_range = max - min
    current_max_range = window_range if current_max_range < window_range
  end
  current_max_range
end

#time is n^2

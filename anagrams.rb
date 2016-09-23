def first_anagram?(string1, string2)
  split_string = string1.split("")
  possible_anagrams = split_string.permutation
  split_string2 = string2.split("")
  possible_anagrams.include?(split_string2)
end

#time difference is n*n!

def second_anagram?(string1, string2)
  split_string1 = string1.split("")
  split_string2 = string2.split("")
  split_string1.each do |letter|
    string1 = string1.delete(letter) if split_string1.count(letter) == split_string2.count(letter)
  end

  return true if string1 == ""

  false

end

#time difference is n^2

def third_anagram?(string1, string2)
  sorted_string1 = string1.split("").sort
  sorted_string2 = string2.split("").sort
  sorted_string1 == sorted_string2
end

#time difference is n log n (?)

def fourth_anagram?(string1, string2)
  word_count = Hash.new(0)
  split_string1 = string1.split("")
  split_string1.each do |char|
    word_count[char] += 1
  end

  final_word_count = Hash.new(0)
  split_string2 = string2.split("")
  split_string2.each do |char|
    final_word_count[char] += 1
  end

  final_word_count.keys.each do |key|
    return false if word_count[key] != final_word_count[key]

  end

  true

end

def fifth_anagram?(string1, string2)

  word_count = Hash.new(0)
  split_string1 = string1.split("")
  split_string1.each do |char|
    word_count[char] += 1
  end

  split_string2 = string2.split("")
  split_string2.each do |char|
    word_count[char] -= 1
  end

  word_count.values.all?{|value| value == 0}
end

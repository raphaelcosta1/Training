def sum_odd_indexed(array)
  sum = 0
  array.each_with_index do |item, index|
    sum += item if index.odd?
  end
  return sum
end

def even_numbers(array)
  array.select { |item| item.even? }
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
end

def short_words(array, max_length)
  array.reject { |i| i.length > 6 }
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
end

def first_under(array, limit)
  array.find { |el| el < limit }
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end

def add_bang(array)
  newarray = array.map { |array| array + "!" }
  return newarray
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end

def concatenate(array)
  array.reduce(:+)
  # TODO: Concatenate all strings given in the array.
  #       You should use of Enumerable#reduce
end

def sorted_pairs(array)
  sortedarray = []
  array.each_slice(2) do |slice|
    sortedarray.push(slice.sort)
  end
  return sortedarray

  # words.sorted
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use of Enumerable#each_slice
end
# words = %w(say my name say my name)
# sorted_pairs(words)

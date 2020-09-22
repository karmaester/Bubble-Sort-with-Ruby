# frozen_string_literal: true

# bubble_sort
arr = [5, 4, 3, 2, 1, 0]

def bubble_sort(arr)
  (arr.length - 1).times do
    arr.each_with_index do |item, index|
      (next if index == arr.length - 1)
      if item > arr[index + 1]
        el = arr.slice!(index)
        arr.insert(index + 1, el)
      end
    end
  end
  arr
end

p bubble_sort(arr)

# bubble_sort_by

arr = %w[hi hello hey]

def bubble_sort_by(arr)
  (arr.length - 1).times do
    arr.each_with_index do |item, index|
      (next if index == arr.length - 1)
      if yield(item, arr[index + 1]).positive?
        el = arr.slice!(index)
        arr.insert(index + 1, el)
      end
    end
  end
  p arr
end

bubble_sort_by(arr) do |a, b|
  a.length - b.length
end

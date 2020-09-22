=begin
  
rescue => exception
  
end
arr = [5, 4, 3, 2, 1, 0]

def bubbleSort(arr)
  (arr.length - 1).times do arr.each_with_index do |item, index|
    if index == arr.length - 1
      next
    elsif item > arr[index + 1]
      el = arr.slice!(index)
      arr.insert(index + 1, el)
    end
    end
  end
  return arr
end


p bubbleSort(arr) do |prev, nxt|
    prev - nxt
end

=end






  
arr = ["hi","hello","hey"]

def bubble_sort_by(arr)
  (arr.length - 1).times do arr.each_with_index do 
    |item, index|
    yield item, arr[index + 1]
  end
end
  return arr
end

p bubble_sort_by(arr) do |prev, nxt| 
  if arr.index(prev) == arr.length - 1
    next
  elsif prev - nxt < 0
    el = arr.slice!(arr.index(prev))
    arr.insert(arr.index(prev) + 1, el)
  end
end
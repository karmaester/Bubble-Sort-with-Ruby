arr = [5, 4, 3, 2, 1, 0]

arr.each_with_index do |item, index|
  p "At #{index} we have #{item}"
end


def bubbleSort(arr)
  arr.each_with_index do |item, index|
    p "At #{index} we have #{item}"
    if arr[index] > arr[index + 1]
      el = x.slice!(0)
      x.insert(1, el)
    end
  end
end

p bubbleSort(arr)
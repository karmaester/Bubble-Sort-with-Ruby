#bubble_sort
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

p bubbleSort(arr)

#bubble_sort_by

arr = ["hi","hello","hey"]


def bubble_sort_by(arr)
  (arr.length - 1).times do arr.each_with_index do |item, index|
    if index == arr.length - 1
      next
      elsif yield(item, arr[index + 1]) > 0
        el = arr.slice!(index)
        arr.insert(index + 1, el)
        end
    end
  end
  return p arr
end


bubble_sort_by(arr) do |a, b| 
  a.length - b.length
end

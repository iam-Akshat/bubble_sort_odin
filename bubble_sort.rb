def bubble_sort(array)
  a = array.length

  loop do
    swapped = false
    (a - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
end
array = [156, 2000, 80, 14, 40, 20, 3, 7]
bubble_sort(array)
puts array.inspect

def bubble_sort_by(array)
  did_change = nil
  (0...array.length).each do |t|
    (0...array.length - t - 1).each do |y|
      if yield(array[y], array[y + 1]).positive?
        array[y], array[y + 1] = array[y + 1], array[y]
        did_change = true
      end
    end
    did_change or break
    did_change = nil
  end
end
arr_string = %w[hi hello hey h]
bubble_sort_by(arr_string) do |left, right|
  left.length - right.length
end
puts arr_string.inspect

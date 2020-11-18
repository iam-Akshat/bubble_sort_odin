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
  didChange=nil
  for t in 0...array.length
      for y in 0...array.length-t-1
          if yield(array[y],array[y+1])>0
              array[y],array[y+1]=array[y+1],array[y]
              didChange=true
          end    
      end
      didChange or break
      didChange=nil
  end
end    
arrString=["hi","hello","hey","h"]
bubble_sort_by(arrString) do |left,right|
  left.length - right.length
end
puts arrString.inspect

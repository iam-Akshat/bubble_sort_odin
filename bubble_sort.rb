def bubble_sort (array)
    a = array.length
    
    loop do 
        swapped = false
        (a-1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end
end   
array = [156, 2000, 80, 14, 40, 20, 3, 7]
bubble_sort (array)
puts array.inspect


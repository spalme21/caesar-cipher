def bubble_sort(arr)
  changed = true
  while changed do
    changed = false
    (0...arr.length - 1).each do |i|
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
        changed = true
      end
    end
  end
  arr
end

puts bubble_sort([4,3,78,2,0,2])
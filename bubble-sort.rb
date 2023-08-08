def bubble_sort(arr)
  changed = true
  while changed
    changed = false
    (0...arr.length - 1).each do |i|
      next unless arr[i] > arr[i + 1]

      temp = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
      changed = true
    end
  end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])

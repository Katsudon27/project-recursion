def fibs(num)
  array = []

  num.times do |i|
    if i == 0
      array << 0
      next
    elsif i == 1
      array << 1
      next
    end

    array << array[i-1] + array[i-2]
  end

  array
end

def fibs_rec(num)
  if num == 1
    return [0]
  elsif num == 2
    return [0,1]
  else
    result = fibs_rec(num-1)
    result.push(result[num-3] + result[num-2])
    return result
  end
end

def merge_sort(array)
  if array.length < 2
    return array
  else
    result = []
    split_array = array.each_slice( (array.size/2.0).round ).to_a
    left_array = merge_sort(split_array[0])
    right_array = merge_sort(split_array[1])
    
    i, j = 0, 0
    while i < left_array.length && j < right_array.length
      if left_array[i] < right_array[j]
        result << left_array[i]
        i += 1
      else 
        result << right_array[j]
        j += 1
      end
    end

    result += left_array.drop(i)
    result += right_array.drop(j)
    
    result
  end
end

p merge_sort([])
p merge_sort([73]) 
p merge_sort([1, 2, 3, 4, 5]) 
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])

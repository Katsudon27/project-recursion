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

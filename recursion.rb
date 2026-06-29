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

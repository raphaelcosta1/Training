def colorful?(number)
  if !number.is_a? Integer
    return false
  end
  array_number = number.digits.reverse
  final_array = []
    if array_number.size == 1
      return true
    end
    if array_number.size == 2
      final_array = array_number
      final_array << (array_number[0] * array_number[1])
        if final_array.uniq.length == 3
          return true
        else
          return false
        end
    end
    if array_number.size == 3
      final_array = array_number
      final_array << (array_number[0] * array_number[1])
      final_array << (array_number[1] * array_number[2])
      final_array << (array_number[0] * array_number[1] * array_number[2])
        if final_array.uniq.size == 6
          return true
        else
          return false
        end
    end
end

# Task 1. Implement the function to find the combination of 4 digits in a row which gives the max
#  multiplication. If object is not a string or there are no combinations found - return nil. 
#  If combination is found - return it's multiplication result. 
#  E.g. max_multiplication('abc12345def') => 120  # 2*3*4*5 
#  max_multiplication('a1b2c3d4e') => nil

def max_multiplication(str)
  # Check if input is a string
  return nil unless str.is_a?(String)

  temporary_array = []

  str.each_char do |char|
    # Check if the character can be converted to a number
    if char.to_i != 0
      temporary_array.push(char.to_i)
    elsif temporary_array.length >= 4
      # If the array has at least four numbers, calculate and return the highest multiplication result
      sorted_nums = temporary_array.sort.reverse
      result = 1
      sorted_nums[0..3].each { |num| result *= num }
      return result
    else
      # Clear the array if it doesn't contain four numbers in a row
      temporary_array.clear
    end
  end

  # Handle cases where the string contains fewer than four digits
  return nil
end
puts max_multiplication("abc12345def");
puts max_multiplication("a1b2c3d4e");
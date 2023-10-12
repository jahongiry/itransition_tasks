#Implement the function to sort array of numbers by amount of '1' in its binary representation. 
#Numbers with identical amount of '1's should be ordered by decimal representation.
#E.g. 3 = 11, 7 = 111, 8 = 1000, 9 = 1001.
#sort([3,7,8,9]) => [8,3,9,7]  # 1000, 11, 1001, 111

def sort(arr)
  #Sorting with two conditions and the second condition helps where there is tie
  arr.sort_by do |num|
    [num.to_s(2).count('1'), num]
  end
end

puts sort([3,7,8,9])
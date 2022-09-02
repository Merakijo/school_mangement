#Array Rotation'

arr = [1,2,3,4,5,6,7]
first = arr[0]    #for first = [1,2]
sec = arr[1]
for i in 1..(arr.length - 2)   #from 1 to 6
  arr[i-1] = arr[i+1]     #arr[0] = arr[2]
end
arr[arr.length - 2] = first
arr[arr.length - 1] = sec
  
puts arr
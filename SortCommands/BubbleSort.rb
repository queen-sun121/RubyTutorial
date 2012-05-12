$totalSourtCount = 0
def bubbleSort(arg)

  arg.each_index{|j|
    arg.each_index{|i|
       $totalSourtCount += 1
       
      if  arg[i+1] != nil && i < arg.length - 1 - j
        if  arg[i] > arg[i+1]
        x = arg[i]
        arg[i] = arg[i+1]
        arg[i+1] = x
        end
      end
      arr = ""
    arg.each{|y| arr = "#{arr} #{y} "}
    puts("The current array is :" + arr)
    }
  }
  return arg
end

#array = [10,10,9,10,10,10,10,10,11,10,10]
array = [3,2,1,3,100,34,223,223,22,11,12]
bubbleSort(array)

arr = ""
array.each{|x| arr += "#{x} "}
puts(arr)

puts("Total sort count is : #{$totalSourtCount}")

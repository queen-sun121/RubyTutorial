def bubbleSort(arg)

  arg.each_index{|j|
    arg.each_index{|i|
      if  arg[i+1] != nil && i < arg.length - 1 - j
        if  arg[i] > arg[i+1]
        x = arg[i]
        arg[i] = arg[i+1]
        arg[i+1] = x
        end
      end
    }
  }

  puts(arg)
end


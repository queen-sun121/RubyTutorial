$totalSourtCount = 0

def sortFromEnd(array, startIndex, endIndex, key)
    loop{
        $totalSourtCount += 1
        break if endIndex  <= startIndex

        if array[endIndex] < key
        tmp = array[endIndex]
        array[endIndex] = array[startIndex]
        array[startIndex] = tmp
        break
        else
        endIndex = endIndex - 1;
        end
    }

    puts("endindex : #{endIndex} , startindex : #{startIndex}")
    arr = ""
    array.each{|x| arr += "#{x} "}
    puts("The current array is :" + arr)

    return endIndex
end

def sortFromStart(array, startIndex, endIndex, key)
    loop{
        $totalSourtCount += 1
        break if startIndex  >= endIndex
        
        if array[startIndex] > key
            tmp = array[startIndex]
            array[startIndex] = array[endIndex]
            array[endIndex] = tmp
        break
        else
            startIndex += 1;
        end
    }

    puts("startindex : #{startIndex} , endindex : #{endIndex} ")
    arr = ""
    array.each{|x| arr += "#{x} "}
    puts("The current array is :" + arr)

    return startIndex
end

def quickSort(array)

    if array == nil or array.length <= 1
        return array
    end

    startIndex = 0
    endIndex = array.length-1
    key = array[0]

    loop{
        break if startIndex == endIndex

        endIndex = sortFromEnd(array, startIndex, endIndex, key)
        startIndex = sortFromStart(array, startIndex, endIndex, key)
    }

    leftArray = []
    rightArray = []

    if startIndex == 0
        leftArray = []
        rightArray = array[startIndex+1..array.length-1]
    elsif startIndex == array.length-1
        leftArray = array[0..startIndex-1]
        rightArray = []
    else
        leftArray = array[0..startIndex-1]
        rightArray = array[startIndex+1..array.length-1]
    end

    sortedArray = quickSort(leftArray) + array[startIndex,1] + quickSort(rightArray)
    return sortedArray;
end

#array = [3,2,1,3,100,34,223,223,22,11,12]
#array = [3,2]
#array = [10,10,10,10,10,10,10,10,10,10,10]
array = [10,10,9,10,10,10,10,10,11,10,10]
newArray = quickSort(array)

arr = ""
newArray.each{|x| arr += "#{x} "}
puts(arr)

puts("Total sort count is : #{$totalSourtCount}")



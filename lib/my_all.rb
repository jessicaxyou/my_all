require 'pry'

def my_all?(collection)

    i = 0 #defining first element of the array

    block_return_values = [] #creating new array to store yielded value

    #iterates through the array using while and increasing i

    while i < collection.length
        block_return_values << yield(collection[i])
         #this yields each elemnent of collection to block and store in new array
        i = i + 1
    end

    if block_return_values.include?(false)
        false
    else
        true
    end

end
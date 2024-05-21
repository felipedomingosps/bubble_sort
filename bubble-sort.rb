def sort(array)
    swaped = 0
    array.each_with_index do |number, index|
        if  index == array.length - 1 then
            break
        end

        next_number = array[index+1]
        stored_number = 0
        

        if next_number < number then
            stored_number = array[index]
            array[index] = next_number
            array[index+1] = stored_number
            swaped += 1
        end
    end

    if swaped == 0 then
        array
    else 
        sort(array)
    end
end

def main
    array = [4,3,78,2,0,2]

    p sort(array)
end
main
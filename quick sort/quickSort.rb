def quicksort(arr, low, high)
    if low < high
        p = partition(arr, low, high)
        quicksort(arr, low, p-1)
        quicksort(arr, p+1, high)
    end
end

def partition(arr, low, high)
    pivot = arr[high]
    i = low - 1
    for j in low..high-1
        if arr[j] <= pivot
            i += 1
            arr[i], arr[j] = arr[j], arr[i]
        end
    end
    arr[i+1], arr[high] = arr[high], arr[i+1]
    return i+1
end

list = [5, 2, 4, 6, 1, 3]
quicksort(list, 0, list.length-1)
p list
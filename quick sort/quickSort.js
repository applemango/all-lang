function quickSort(arr, low, high) {
    if (low < high) {
        let pivot = partition(arr, low, high);
        quickSort(arr, low, pivot - 1);
        quickSort(arr, pivot + 1, high);
    }
}

function partition(arr, low, high) {
    let pivot = arr[high];
    let i = low -1;
    for (let j = low; j < high; j++) {
        if (arr[j] <= pivot) {
            i++;
            swap(arr, i, j);
        }
    }
    swap(arr, i + 1, high);
    return i + 1;
}

function swap(arr, i, j) {
    let temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

let list = [5, 2, 1, 8, 4];
quickSort(list, 0, list.length - 1);
console.log(list);
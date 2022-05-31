package main

import "fmt"

func quickSort(arr []int, low int, high int) {
	if low < high {
		pi := partition(arr, low, high)
		quickSort(arr, low, pi-1)
		quickSort(arr, pi+1, high)
	}
}

func partition(arr []int, low int, high int) int {
	pivot := arr[high]
	i := low - 1
	for j := low; j < high; j++ {
		if arr[j] <= pivot {
			i++
			arr[i], arr[j] = arr[j], arr[i]
		}
	}
	arr[i+1], arr[high] = arr[high], arr[i+1]
	return i + 1
}

func main() {
	list := [...]int{5, 2, 4, 6, 1, 3}
	quickSort(list[:], 0, len(list)-1)
	for _, v := range list {
		fmt.Printf("%d ", v)
	}
}

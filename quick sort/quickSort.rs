#![allow(non_snake_case)]
use std::convert::TryInto;

fn quicksort(arr: &mut [i32], low: i32, high: i32) {
    if low < high {
        let p = partition(arr, low, high);
        quicksort(arr, low, p - 1);
        quicksort(arr, p + 1, high);
    }
}
fn partition(arr: &mut [i32], low: i32, high: i32) -> i32 {
    let pivot = arr[high as usize];
    let mut i = low - 1;
    for j in low..high {
        if arr[j as usize] <= pivot {
            i += 1;
            arr.swap(i.try_into().unwrap(), j.try_into().unwrap());
        }
    }
    arr.swap((i+1).try_into().unwrap(), high.try_into().unwrap());
    i + 1
}

fn main() {
    let mut list = [5, 2, 4, 6, 1, 3];
    let length = list.len();
    quicksort(&mut list, 0, (length - 1).try_into().unwrap());
    println!("{:?}", list);
}
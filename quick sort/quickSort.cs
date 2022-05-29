using System;

public class Program {
    public static void Main(string[] args) {
        void quickSort(int[] arr, int low, int high) {
            if (low < high) {
                int p = partition(arr, low, high);
                quickSort(arr, low, p - 1);
                quickSort(arr, p + 1, high);
            }
        }

        int partition(int[] arr, int low, int high) {
            int pivot = arr[high];
            int i = low - 1;
            for (int j = low; j < high; j++) {
                if (arr[j] <= pivot) {
                    i++;
                    swap(arr, i, j);
                }
            }
            swap(arr, i + 1, high);
            return i + 1;
        }
        
        void swap(int[] arr, int i, int j) {
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }

        int[] arr = { 5, 2, 4, 6, 1, 3 };
        quickSort(arr, 0, arr.Length - 1);
        foreach (int i in arr) {
            Console.Write(i + " ");
        }
    }
}
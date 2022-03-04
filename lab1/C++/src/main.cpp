#include <iostream>
#include <vector>

using namespace std;

void merge(int arr[], int aux[], int left, int right) {
    int middle = left + (right - left) / 2;
    int i = left, j = middle + 1, current = left;
    for (int k = left; k <= right; k++) aux[k] = arr[k];
    
    while (i <= middle && j <= right) {
        if (aux[i] <= aux[j]) {
            arr[current++] = aux[i++];
        }
        else {
            arr[current++] = aux[j++];
        }
    }
    while (i <= middle) arr[current++] = aux[i++];
    while (j <= right) arr[current++] = aux[j++];
}

void mergeSort(int arr[], int aux[], int left, int right) {
    if (left >= right) return;
    int middle = left + (right - left) / 2;
    mergeSort(arr, aux, left, middle);
    mergeSort(arr, aux, middle + 1, right);
    merge(arr, aux, left, right);
}

int main() {
    int n;
    int * arr = new int[n];
    int * aux = new int[n];

    cin >> n;
    for (int i = 0; i != n; i++) {
        cin >> arr[i];
    }

    mergeSort(arr, aux, 0, n - 1);
    for (int i = 0; i != n; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
    delete [] arr;
    delete [] aux;
    return 0;
}

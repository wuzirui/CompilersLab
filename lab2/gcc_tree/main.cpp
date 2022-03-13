#include <iostream>
#include <vector>
#include "mergesort.hpp"

using namespace std;

int main() {
    int n;
    cin >> n;
    int * arr = new int[n];
    int * aux = new int[n];

    for (int i = 0; i != n; i++) {
        cin >> arr[i];
    }

    mergeSort(arr, aux, 0, n - 1);
    for (int i = 0; i != n; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
    return 0;
}

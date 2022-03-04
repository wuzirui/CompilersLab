#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n; cin >> n;
    vector<int> arr(n);
    for (int i = 0; i < n; i++) {
        cin >> arr[n];
    }
    for (int i = 1; i < n; i++) {
        if (arr[i] < arr[i - 1]) {
            cout << "Wrong Answer!" << endl;
            printf("arr[%d] = %d, arr[%d] = %d.\n", i - 1, arr[i - 1], i, arr[i]);
        }
    }
    cout << "OK!" << endl;
    return 0;
}

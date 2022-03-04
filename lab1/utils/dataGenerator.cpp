#include <iostream>
#include <random>
#include <ctime>

using namespace std;

int main() {
    int n;
    cin >> n;
    srand(time(0));

    cout << n << endl;
    for (int i = 0; i < n; i++) {
        cout << rand() << endl;
    }

    return 0;
}

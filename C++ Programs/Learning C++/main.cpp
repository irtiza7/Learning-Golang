#include <iostream>

using namespace std;

void average(int n1, int n2, int n3, int n4) {
    cout << "Average = " << (n1+n2+n3+n4) / 4 << endl;
}

// int foo1() {
//     return 0;
// }
// char foo2() {}
// double foo3() {}

int main() {
    printf("----Calculator----\n")
    int num1, num2, num3, num4;
    
    cout << "Enter num 1> " << endl;
    cin >> num1;
    cout << "Enter num 2> " << endl;
    cin >> num2;
    cout << "Enter num 3> " << endl;
    cin >> num3;
    cout << "Enter num 4> " << endl;
    cin >> num4;

    average(num1, num2, num3, num4);
    return 0;
}

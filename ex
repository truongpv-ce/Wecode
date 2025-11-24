#include <iostream>
#include <cmath>
#define MAXN 100

void NhapMang(int A[], int& N) {
    std::cin >> N;
    for (int i = 0; i < N; i++)
        std::cin >> A[i];
}
void XuatMang(int A[], int N) {
    for (int i = 0; i < N; i++)
        std::cout << A[i] << "\t";
}
bool isPrime(int n) {
    if (n < 2)
        return false;
    for (int i = 2; i<= sqrt(n); i++) {
        if (n % i == 0)
            return false;
    }
    return true;
}

void ChenSau(int a[MAXN], int& n, int X, int k) {
    int i;
    for (i = n - 1; i > k; i--) { // x=2 | 7 6 2 
        a[i + 1] = a[i];
        a[k+1] = X;
        n++;
    }
}

    void ChenSauSoNguyenToDauTien(int a[], int& n, int X) {
        if (n == MAXN)
            return;
        for (int i = 0; i < n; i++) {
            if (isPrime(a[i]) == true) {
                if (i == n - 1 || a[i + 1] != X)
                    ChenSau(a, n, X, i);
                return;
            }
        }

    }
//###INSERT CODE HERE -

int main() {
    int a[MAXN], n, X;
    std::cin >> X;
    NhapMang(a, n);
    ChenSauSoNguyenToDauTien(a, n, X);
    XuatMang(a, n);
    return 0;
}

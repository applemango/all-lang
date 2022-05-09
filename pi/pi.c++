#include <iostream>
#include <time.h>

using namespace std;

int main(){

    int n = 10000000;
    int mc = 0;

    srand (time(NULL));

    for (int i = 0; i < n; i++){

        double x = (double)rand() / (RAND_MAX);
        double y = (double)rand() / (RAND_MAX);

        if (x*x + y*y <= 1){
            mc++;
        }

    }

    double pi = (double)4*mc/n;
    
    cout << "pi = " << pi << endl;

    return 0;
}
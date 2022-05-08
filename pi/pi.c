#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void main()
{
    srand((unsigned int)time(NULL));

    int n = 1000000;
    int mc = 0;
    float a = 10.0;

    for (int i=0;i<n;i++) {

        double x = (((float)rand()/(float)(RAND_MAX)) * a)/10;
        double y = (((float)rand()/(float)(RAND_MAX)) * a)/10;

        if(x*x + y*y < 1) {
            mc++;
        }

    }

    float pi = 4.0*mc/n;

    printf("%f",pi);

}
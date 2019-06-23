//
//  main.c
//  Coolness
//
//  Created by William Gao on 7/10/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    printf("Aaron is Cool\n");
    
    //while loop
    int i = 0;
    while (i < 12) {
        printf("%d. Aaron is Cool\n", i);
        i++;
    }
    
    //for loop
    for(int j = 0; j < 12; j++){
        printf("%d. Aaron is Cool\n", j);
    }
    
    //break
    int n;
    for(n = 0; n < 12; n++){
        printf("Checking i = %d\n", n);
        if (n + 90 == n * n){
            break;
        }
    }
    printf("The answer is %d.\n", n);
    
    //continue
    int k;
    for(k = 0; k < 12; k++){
        if (k % 3 == 0){
            continue;
        }
        printf("Checking k = %d\n", k);
        if(k + 90 == k * k){
            break;
        }
    }
    printf("The answer is %d.\n", k);
    
    //do while loop
    int h = 0;
    do{
        printf("%d. Aaron is Cool\n", h);
        h++;
    } while (h < 12);
    
    
    return 0;
}

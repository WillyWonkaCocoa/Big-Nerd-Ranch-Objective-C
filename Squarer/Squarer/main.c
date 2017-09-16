//
//  main.c
//  Squarer
//
//  Created by William Gao on 7/9/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#include <stdio.h>

int squared(int num){
    int product = num * num;
    return product;
}

int main(int argc, const char * argv[]) {
    int num = 5;
    int product = squared(num);
    printf("\"%d\" squared is \"%d\".\n", num, product);
    
    return 0;
}

//
//  main.c
//  CountDown
//
//  Created by William Gao on 7/10/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//
#import <readline/readline.h>
#include <stdio.h>

void findDivisibleByFive(int num){
    for (int i = num; i > -1; i -= 3){
        printf("%d\n", i);
        if(i % 5 == 0){
            printf("Found one!\n");
        }
        
    }
}

int main(int argc, const char * argv[]) {
    printf("Where should I start counting? ");
    const char *number = readline(NULL);
    int num = atoi(number);
    findDivisibleByFive(num);
    return 0;
}

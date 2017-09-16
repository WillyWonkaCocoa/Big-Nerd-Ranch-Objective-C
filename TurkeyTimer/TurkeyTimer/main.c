//
//  main.c
//  TurkeyTimer
//
//  Created by William Gao on 7/9/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurkey(int pounds){
    int necessaryMinutes = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", necessaryMinutes);
    
    if (necessaryMinutes > 120){
        int halfway = necessaryMinutes / 2;
        printf("Rotate after %d of the %d minutes.\n", halfway, necessaryMinutes);
    }
}

int main(int argc, const char * argv[]) {
    int totalWeight = 10;
    int gibletWeight = 1;
    int turkeyWeight = totalWeight - gibletWeight;
    showCookTimeForTurkey(turkeyWeight);
    return 0;
}

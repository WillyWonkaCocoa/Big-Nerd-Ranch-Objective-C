//
//  main.c
//  Triangle
//
//  Created by William Gao on 7/9/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//  Chapter 5 challenge

#include <stdio.h>

float remainingAngle(float angleOne, float angleTwo){
    float lastAngle = 180 - angleOne - angleTwo;
    return lastAngle;
}

int main(int argc, const char * argv[]) {
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

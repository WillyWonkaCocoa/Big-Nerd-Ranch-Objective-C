//
//  main.c
//  FourMillionSecondsLater
//
//  Created by William Gao on 7/12/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    struct tm fourMillionSecondsLater;
    long fourMillionMoreSeconds = secondsSince1970 + 4000000;
    localtime_r(&fourMillionMoreSeconds, &fourMillionSecondsLater);
    
    printf("Four million seconds from now, the date is %d-%d-%d\n",
           fourMillionSecondsLater.tm_mon + 1, fourMillionSecondsLater.tm_mday, fourMillionSecondsLater.tm_year + 1900);
    
    
    return 0;
}

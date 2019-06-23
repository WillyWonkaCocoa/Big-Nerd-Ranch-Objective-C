//
//  main.m
//  SecondsAlive
//
//  Created by William Gao on 7/13/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Use two NSDate instances to figure out how many seconds I have been alive
        NSDate *now = [NSDate date];
        
        //Set NSDate of birth day using NSDateComponents & NSCalendar
        NSDateComponents *comps = [ [NSDateComponents alloc] init];
        [comps setYear:1997];
        [comps setMonth:7];
        [comps setDay:1];
        [comps setHour:8];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *g = [ [NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        unsigned long secondsSinceBirth = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"You have been alive for %lu seconds.\n", secondsSinceBirth);
        
    }
    return 0;
}

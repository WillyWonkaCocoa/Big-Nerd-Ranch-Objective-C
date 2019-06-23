//
//  main.m
//  DateList
//
//  Created by William Gao on 7/16/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //create an array that holds a list of pointer to NSDate objects
        
       //Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval: 24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval: -24.0 * 60.0 * 60.0];
       
        /*
        //Create an array contraining all three
        NSArray *dateList = @[now, tomorrow, yestereday];
         */
        
        //Create an empty mutable array
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Add two dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //Add yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        /*
        //Print a couple of dates
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
        
        //How many dates are in the array?
        NSLog(@"There are %lu dates", [dateList count]);
        */
        
        /*
        //Iterate over the array
        
        //for loop
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
        
        //fast enumeration
        for(NSDate *d in dateList){
            NSLog(@"Here is a date: %@", d);
        }
        */
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
        
    }
    return 0;
}

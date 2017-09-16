//
//  main.m
//  TimeAfterTime
//
//  Created by William Gao on 7/13/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Chapter 13
        //NSDate *now = [NSDate date];
        
        //using nested alloc & init to create an instance of NSDate
        NSDate *now = [ [NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        //Be careful of the difference between class methods and instance methods
        //Capitalization matters
        
        //Chapter 14
        NSDate *later = [now dateByAddingTimeInterval:10000];
        NSLog(@"In 10,000 seconds it wil be %@", later);
        
        //identify the type of calendar the conputer is using
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        //ask cal to find the day of the month pointed to by now
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                           forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        
        
    }
    return 0;
}

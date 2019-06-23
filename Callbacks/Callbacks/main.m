//
//  main.m
//  Callbacks
//
//  Created by William Gao on 12/19/17.
//  Copyright © 2017 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        // [[NSNotificationCenter defaultCenter]
        // addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        // Use a block instead
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
            NSLog(@"The system time zone has changed!");
        }];
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        __unused NSTimer *timer =
            [NSTimer scheduledTimerWithTimeInterval:2.0
                                             target:logger
                                           selector:@selector(updateLastTime:)
                                           userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

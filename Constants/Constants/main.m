//
//  main.m
//  Constants
//
//  Created by William Gao on 6/5/17.
//  Copyright © 2017 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10,12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}

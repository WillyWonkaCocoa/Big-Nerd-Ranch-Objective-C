//
//  main.m
//  ComputerName
//
//  Created by William Gao on 7/13/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *myComputer = [NSHost currentHost];
        NSString *computerInfo = [myComputer localizedName];
        NSLog(@"My computer's name is : %@", computerInfo);
        
    }
    return 0;
}

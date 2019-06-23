//
//  main.m
//  Chapter8ChallengeNSString
//
//  Created by William Gao on 7/16/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <readline/readline.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //rewrite user input challenge from Chapter 8 - Coolneess
        //read in input
        NSLog(@"Who is cool? ");
        const char *name = readline(NULL);
        
        //convert from C string to NSString
        NSString *coolName = [NSString stringWithUTF8String:name];
        
        //Output using NSLog
        NSLog(@"%@ is cool!\n\n", coolName);
        
    }
    return 0;
}

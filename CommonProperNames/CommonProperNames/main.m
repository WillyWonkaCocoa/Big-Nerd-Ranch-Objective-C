//
//  main.m
//  CommonProperNames
//
//  Created by William Gao on 7/16/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Challenge for Chapter 17 : find common proper names that are also regular words
        NSMutableArray *solution = [NSMutableArray array]; //solution array
        
        //Read in a file as a huge string
        NSString *UpperCaseNameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *LowerCaseNameString = [UpperCaseNameString lowercaseString];
        
        //Break it into an array of strings
        NSArray *names = [LowerCaseNameString componentsSeparatedByString:@"\n"];

        
        //Read in regular words
         NSString *commonString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        //Break it into an array of strings
        NSArray *commons = [commonString componentsSeparatedByString:@"\n"];
        
        //Go through the array one string at a time
        for (NSString *name in names){
            for (NSString *word in commons){
                if([word isEqualToString:name]){
                    NSLog(@"word: %@  and name: %@", word, name);
                    [solution addObject:name];
                    break;
                }
            }
        }
        
        for(NSString *answer in solution){
            NSLog(@"%@ is both a word and a noun", answer);
        }
        
        NSLog(@"there are %lu answers", (unsigned long)([solution count] - 1)); //nil is not a solution
    }
    
    return 0;
}

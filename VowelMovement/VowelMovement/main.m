//
//  main.m
//  VowelMovement
//
//  Created by William Gao on 1/11/18.
//  Copyright © 2018 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create array of strings and a container for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // Create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // Declare the block variable
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        
        // Declare the block variable using typedef
        ArrayEnumerationBlock devowelizer;
        
        // Compose a block and assign it to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound){
                *stop = YES; // Prevent further iterations
                return; // End this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over teh array of vowels, replacing ocurances of each
            // with an empty string
            for(NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }; // End of block assignment
    
    // Iterate over the array with your block
        // anonymous block
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound){
                *stop = YES; // Prevent further iterations
                return; // End this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over teh array of vowels, replacing ocurances of each
            // with an empty string
            for(NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }];
    NSLog(@"devowelized strings: %@", devowelizedStrings);
        
    }
    return 0;
}

//
//  main.m
//  Groceries
//
//  Created by William Gao on 7/16/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Create an empty NSMutableAray object
        NSMutableArray *groceryList = [NSMutableArray array];
        
        //Create several grocery-like strings to the array
        NSString *butter = @"Stick of butter";
        NSString *milk = @"Container of milk";
        NSString *bread = @"Loaf of bread";
        
        //Add them to the empty array
        [groceryList addObject:bread];
        [groceryList addObject:milk];
        [groceryList addObject:butter];
        
        //Print them out using fast enumeration
        NSLog(@"My grocery list is: ");
        
        for (NSString *s in groceryList){
            NSLog(@"%@", s);
        }
        
        
    }
    return 0;
}

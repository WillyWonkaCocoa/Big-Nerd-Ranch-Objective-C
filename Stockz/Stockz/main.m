//
//  main.m
//  Stockz
//
//  Created by William Gao on 1/12/18.
//  Copyright © 2018 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
    
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"APPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
      
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
    }
    return 0;
}

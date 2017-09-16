//
//  BNRPortfolio.m
//  Stocks
//
//  Created by William Gao on 12/27/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"
@interface BNRPortfolio ()
{
    NSMutableArray *_stocks;
}
@end
@implementation BNRPortfolio

// accessors for assets properties
- (void)setStocks:(NSArray *)s
{
    _stocks = [s mutableCopy];
}

- (NSArray *)stocks
{
    return [_stocks copy];
}

-(void)addStock:(BNRStockHolding *)s
{
    //check if _stocks is initialized
    if(!_stocks){
        //create the array
        _stocks = [[NSMutableArray alloc] init];
    }
    [_stocks addObject:s];
}

-(void)removeStock:(BNRStockHolding *)s
{
    [_stocks removeObject:s];
}

- (float)portfolioValue
{
    //sums up the values of the porfolio
    float sum = 0;
   
    for(BNRStockHolding *s in _stocks){
        sum += [s valueInDollars];
    }
    return sum;
}

-(NSArray *)getTopThreeHoldings{
    NSArray *topThree;
    
    if(!_stocks){
        //create the array
        _stocks = [[NSMutableArray alloc] init];
        NSLog(@"No stocks in your portolio yet!");
    }else{
        NSSortDescriptor *value = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
        NSArray *sortedArray = [[self stocks] sortedArrayUsingDescriptors:@[value]];
        NSUInteger arrSize = [sortedArray count];
        
        /* if there are 3 or more stocks*/
        if(arrSize >= 3){
            NSRange range = NSMakeRange(0, 3);
            topThree = [sortedArray subarrayWithRange:range];

        }else{
            /* create a new array with only the available stocks*/
            NSRange range = NSMakeRange(0, arrSize);
            topThree = [sortedArray subarrayWithRange:range];
        }
    }

    return topThree;
}

-(NSArray *)alphaHoldings{
    NSArray *sorted = [[NSArray alloc] init];
    
    /* if there are no portfolios created yet */
    if(!_stocks){
        //create the array
        _stocks = [[NSMutableArray alloc] init];
        NSLog(@"No stocks in your portolio yet!");
    }else{
        NSSortDescriptor *alpha = [NSSortDescriptor sortDescriptorWithKey:@"stockTicker" ascending:YES];
        sorted = [[self stocks] sortedArrayUsingDescriptors:@[alpha]];
      
    }

    return sorted;
}

@end

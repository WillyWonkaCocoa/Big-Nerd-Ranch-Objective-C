//
//  BNRStockHolding.m
//  Stocks
//
//  Created by William Gao on 7/18/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

//Accessors
//getters
- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

//setters
- (void)setPurchseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

- (void)setCurrentSharePrice:(float)p
{
    _currentSharePrice = p;
}

-(void)setNumberOfShares:(int)n
{
    _numberOfShares = n;
}

//other methods
- (float)costInDollars{
    return _purchaseSharePrice * _numberOfShares;
}

- (float)valueInDollars{
    return _currentSharePrice * _numberOfShares;
}

@end

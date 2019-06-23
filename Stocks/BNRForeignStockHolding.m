//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by William Gao on 9/3/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

//other methods
- (float)costInDollars{
    return _purchaseSharePrice * _numberOfShares * _conversionRate;
}

- (float)valueInDollars{
    return _currentSharePrice * _numberOfShares * _conversionRate;
}

@end

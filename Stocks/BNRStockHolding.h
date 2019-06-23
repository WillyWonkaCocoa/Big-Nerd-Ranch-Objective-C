//
//  BNRStockHolding.h
//  Stocks
//
//  Created by William Gao on 7/18/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

@property (nonatomic, copy) NSString *stockTicker;

//Accessor methods
//getters
- (float)purchaseSharePrice;
- (float)currentSharePrice;
- (int)numberOfShares;

//setters
- (void)setPurchseSharePrice:(float)p;
- (void)setCurrentSharePrice:(float)p;
- (void)setNumberOfShares:(int)n;

//other methods
- (float)costInDollars;  //purchaseSharePrice * numberOfShares
- (float)valueInDollars; //currentSharePrice * numberOfShares

@end

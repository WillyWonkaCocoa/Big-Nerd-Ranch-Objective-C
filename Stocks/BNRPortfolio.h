//
//  BNRPortfolio.h
//  Stocks
//
//  Created by William Gao on 12/27/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *stocks;

-(void)addStock:(BNRStockHolding *)s;
-(void)removeStock:(BNRStockHolding *)s;
-(float)portfolioValue;

-(NSArray *)getTopThreeHoldings;
-(NSArray *)alphaHoldings;

@end

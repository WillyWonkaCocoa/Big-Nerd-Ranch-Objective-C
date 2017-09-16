//
//  main.m
//  Stocks
//
//  Created by William Gao on 7/18/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create three instances of BNRStockHolding
        BNRStockHolding *stockOne = [[BNRStockHolding alloc] init];
        BNRStockHolding *stockTwo = [[BNRStockHolding alloc] init];
        BNRStockHolding *stockThree = [[BNRStockHolding alloc] init];
        BNRStockHolding *stockFour = [[BNRStockHolding alloc] init];
        
        //set each instance to appropriate values
        [stockOne setPurchseSharePrice:2.30];
        [stockOne setCurrentSharePrice:4.50];
        [stockOne setNumberOfShares:40];
        [stockOne setStockTicker:@"Toyota"];
        
        [stockTwo setPurchseSharePrice:12.19];
        [stockTwo setCurrentSharePrice:10.56];
        [stockTwo setNumberOfShares:90];
        [stockTwo setStockTicker:@"Apple"];
        
        [stockThree setPurchseSharePrice:45.10];
        [stockThree setCurrentSharePrice:49.51];
        [stockThree setNumberOfShares:210];
        [stockThree setStockTicker:@"Canon"];
        
        [stockFour setPurchseSharePrice:20.07];
        [stockFour setCurrentSharePrice:100];
        [stockFour setNumberOfShares:10];
        [stockFour setStockTicker:@"Facebook"];
        
        //create a foreignStockHolding
        BNRForeignStockHolding *foreignStock = [[BNRForeignStockHolding alloc] init];
        [foreignStock setPurchseSharePrice:2.30];
        [foreignStock setCurrentSharePrice:4.50];
        [foreignStock setNumberOfShares:40];
        [foreignStock setConversionRate:0.94];
        [foreignStock setStockTicker:@"DJI"];
        
        
        //create an array with the three stocks in it
        NSArray *stocks = @[stockOne, stockTwo, stockThree, stockFour, foreignStock];
        
        //iterate through the array and print out each stock's value
        for (BNRStockHolding *stock in stocks)
        {
            float value = [stock valueInDollars];
            NSLog(@"%@ has a value of $%.2f\n",stock,value);
        }
        
        //create a BNRPortfolio object to hold all four stocks
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        [portfolio addStock:stockOne];
        [portfolio addStock:stockTwo];
        [portfolio addStock:stockThree];
        [portfolio addStock:stockFour];
        [portfolio addStock:foreignStock];
        
        
        NSArray *topThree = [portfolio getTopThreeHoldings];
        NSLog(@"top three valued stocks: ");
        for (BNRStockHolding *stock in topThree)
        {
            float value = [stock valueInDollars];
            NSLog(@"%@ has a value of $%.2f\n",stock,value);
        }
        
        NSArray *sortedByAlpha = [portfolio alphaHoldings];
        NSLog(@"sorted by alphabetical symbol: ");
        
        for (BNRStockHolding *stock in sortedByAlpha)
        {
            float value = [stock valueInDollars];
            NSString* symbol = [stock stockTicker];
            NSLog(@"%@ has a symbol of %@ and a value of $%.2f\n",stock, symbol, value);
        }
        
        
        float totalValue = [portfolio portfolioValue];
        [portfolio removeStock:stockTwo];
        NSLog(@"The portfolio's total value is $%.2f\n",totalValue);
        totalValue = [portfolio portfolioValue];
        NSLog(@"The portfolio's total value is $%.2f after removing stock two\n",totalValue);
        
    }
    return 0;
}

//
//  BNREmployee.m
//  BMITime
//
//  Created by William Gao on 7/21/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"
@interface BNREmployee()
{
    NSMutableSet *_assets;
}

    @property (nonatomic) unsigned int officeAlarmCode;
@end

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    //Is assets nil?
    if(!_assets){
        //Create the array
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    [a setHolder:self];
//    a.holder = self;
}

-(void)removeAsset:(BNRAsset *)a
{
    [_assets removeObject:a];
    
}

- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets){
        sum += [a resaleValue];
    }
    return sum;
}


- (NSString *) description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

- (double)yearsOfEmployment
{
    //Do I have a non-nil hireDate
    if(self.hireDate){
        //NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs/31536000.0; //Seconds per year
        
    }else{
        return 0;
    }
}

- (float) bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 19.0;
}


@end

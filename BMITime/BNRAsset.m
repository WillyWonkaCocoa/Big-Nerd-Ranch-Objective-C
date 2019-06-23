//
//  BNRAsset.m
//  BMITime
//
//  Created by William Gao on 9/6/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
     // return [NSString stringWithFormat:@"<%@: $%u", self.label, self.resaleValue];
    
        //Check if the holder is non-nil
    if(self.holder){
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                    self.label, self.resaleValue, self.holder];
    }else{
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                    self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end

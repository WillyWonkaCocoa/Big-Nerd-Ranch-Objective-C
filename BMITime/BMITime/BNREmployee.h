//
//  BNREmployee.h
//  BMITime
//
//  Created by William Gao on 7/21/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson //BNREmployee is a subclass of BNRPerson

//Three properties : employee ID, hire date, and alarm code
@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;
- (double) yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
-(void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

//
//  main.c
//  Turkey
//
//  Created by William Gao on 7/5/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    //Declare the variable called 'weight' of type float
    float weight;
    
    //Store a number in that variable
    weight = 14.2;
    
    //Log it to the user
    printf("The turkey weighs %f.\n", weight);
    
    //Declare another variable of type float
    float cookingTime;
    
    //Calculate the cooking time and store it in the variable
    //In this case, '*' means 'mulitplied by'
    cookingTime = 15.0 + 15.0 * weight;
    
    //LOg that to the user
    printf("Cook it for %f minutes.\n", cookingTime);
    
    //End this function and indicate success
    return 0;
}

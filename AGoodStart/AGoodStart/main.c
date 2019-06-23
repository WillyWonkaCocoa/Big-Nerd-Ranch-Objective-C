//
//  main.c
//  AGoodStart
//
//  Created by William Gao on 7/5/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    //Print the beginning of the novel
    printf("It was the best of times.\n");
    printf("It was the worst of times.\n");
    /* Is that actually any good?
        Maybe it needs a rewrite. */
    
    //using string literals stored as C strings
    char *firstLine = "It was the best of times.\n";
    char *secondLine = "It was the worst of times.\n";
    
    //Print the beginning of the novel
    printf(firstLine);
    printf(secondLine);
    
    return 0;
}

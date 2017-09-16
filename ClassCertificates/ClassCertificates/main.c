//
//  main.c
//  ClassCertificates
//
//  Created by William Gao on 7/7/16.
//  Copyright © 2016 BigNerdRanach. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congradulateStudent(char *student, char *course, int numDays){
    printf("%s has done as much %s Programming as I could fit into %d days. \n",
           student, course, numDays);
}

int main(int argc, const char * argv[]) {
    congradulateStudent("Kate", "Cocoa", 5);
    sleep(2);
    congradulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congradulateStudent("Mike", "Python", 5);
    sleep(2);
    congradulateStudent("Liz", "iOS", 5);
    return 0;
}

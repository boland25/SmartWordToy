//
//  main.m
//  SmartWordToy
//
//  Created by Roberto Osorio-Goenaga on 7/7/15.
//  Copyright (c) 2015 Roberto. All rights reserved.
//

/*
 Problem Statement
 
 The toy company "I Can't Believe It Works!" has hired you to help develop educational toys. The current project is a word toy that displays four letters at all times. Below each letter are two buttons that cause the letter above to change to the previous or next letter in alphabetical order. So, with one click of a button the letter 'c' can be changed to a 'b' or a 'd'. The alphabet is circular, so for example an 'a' can become a 'z' or a 'b' with one click.
 
 
 
 In order to test the toy, you would like to know if a word can be reached from some starting word, given one or more constraints. A constraint defines a set of forbidden words that can never be displayed by the toy. Each constraint is formatted like "X X X X", where each X is a string of lowercase letters. A word is defined by a constraint if the ith letter of the word is contained in the ith X of the contraint. For example, the constraint "lf a tc e" defines the words "late", "fate", "lace" and "face".
 
 
 
 You will be given a String start, a String finish, and a String[] forbid. Calculate and return the minimum number of button presses required for the toy to show the word finish if the toy was originally showing the word start. Remember, the toy must never show a forbidden word. If it is impossible for the toy to ever show the desired word, return -1.
 */

#import <Foundation/Foundation.h>
#import "SmartWordToy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        SmartWordToy *toy = [SmartWordToy new];
        int c = [toy findShortestPathBetween:'a' and:'l'];
        [toy minPressesWithStart:@"aaaa" finish:@"zzzz" andForbid:[NSSet new]];
        NSLog(@"Steps: %i", c);
    }
    return 0;
}

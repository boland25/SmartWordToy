//
//  SmartWordToy.m
//  
//
//  Created by Roberto Osorio-Goenaga on 7/7/15.
//
//

#import "SmartWordToy.h"

@implementation SmartWordToy

-(int)minPressesWithStart:(NSString *)start finish:(NSString *)finish andForbid:(NSArray *)forbid {
    if ([forbid containsObject:start] || [forbid containsObject:finish]) {
        return -1;
    }
    const char* startString = [start UTF8String];
    const char* endString = [finish UTF8String];
    char *mutableStartString = malloc(start.length);
    strcpy(mutableStartString, startString);
    int steps = 0;
    for (int i=0; i<start.length; i++) {
        mutableStartString[i] = endString[i];
        int failNumber = 0;
        for (int n=0; n<start.length; n++) {
            NSString *testString = [NSString stringWithCString:mutableStartString];
            if ([forbid[i] containsObject:[NSString stringWithFormat:@"%c", [testString characterAtIndex:n]]]) {
                failNumber++;
            }
            if (failNumber == 3) {
                mutableStartString[i] = startString[i];
            }
            if (failNumber != 3 && n == 3) {
                NSLog(@"Done!");
                steps += [self findShortestPathBetween:startString[i] and:endString[i]];
                break;
            }
        }
    }
    free(mutableStartString);
    return steps;
}

- (int)findShortestPathBetween:(int)a and:(int)b {
    int dist = abs ( a - b );
    return MIN( ('z' - 'a') - dist, dist);
}

@end

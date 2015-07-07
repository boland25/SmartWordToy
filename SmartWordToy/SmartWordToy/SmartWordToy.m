//
//  SmartWordToy.m
//  
//
//  Created by Roberto Osorio-Goenaga on 7/7/15.
//
//

#import "SmartWordToy.h"

@implementation SmartWordToy

-(int)minPressesWithStart:(NSString *)start finish:(NSString *)finish andForbid:(NSSet *)forbid {
    if ([forbid containsObject:start] || [forbid containsObject:finish]) {
        return -1;
    }
    const char* startString = [start UTF8String];
    const char* endString = [finish UTF8String];
    char *mutableStartString = malloc(start.length);
    strcpy(mutableStartString, startString);
    int steps = 0;
    for (int i = 0; i < start.length; i++) {
        mutableStartString[i] = endString[i];
        if (![forbid containsObject:[NSString stringWithCString:mutableStartString]]) {
            steps += [self findShortestPathBetween:mutableStartString[i] and:endString[i]];
        } else {
            mutableStartString[i] = startString[i];
        }
    }
    free(mutableStartString);
    return 0;
}

- (int)findShortestPathBetween:(int)a and:(int)b {
    int dist = abs ( a - b );
    return MIN( ('z' - 'a') - dist, dist);
}

@end

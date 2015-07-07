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
//    if ([forbid containsObject:start] || [forbid containsObject:finish]) {
//        return -1;
//    }
//    const char* startString = [start UTF8String];
//    char *mutableStartString = malloc(start.length);
//    strcpy(mutableStartString, startString);
//    for(int n=0; n<start.length; n++) {
//        int x = mutableStartString[n];
//        NSLog(@"%i", x);
//    }
//    
//    free(mutableStartString);
    return 0;
}

- (int)findShortestPathBetween:(int)a and:(int)b {
    int dist = abs ( a - b );
    return MIN( ('z' - 'a') - dist, dist);
}

@end

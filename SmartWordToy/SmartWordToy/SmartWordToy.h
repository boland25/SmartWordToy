//
//  SmartWordToy.h
//  
//
//  Created by Roberto Osorio-Goenaga on 7/7/15.
//
//

#import <Foundation/Foundation.h>

@interface SmartWordToy : NSObject

- (int)minPressesWithStart:(NSString*)start finish:(NSString*)finish andForbid:(NSArray*)forbid;
- (int)findShortestPathBetween:(int)a and:(int)b;

@end

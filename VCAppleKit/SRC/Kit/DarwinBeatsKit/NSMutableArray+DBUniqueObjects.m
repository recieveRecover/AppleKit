//
//  NSMutableArray+DBUniqueObjects.m
//  FTPPlayer
//
//  Created by VladislavEmets on 11/17/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import "NSMutableArray+DBUniqueObjects.h"

@implementation NSMutableArray (DBUniqueObjects)

- (BOOL)addUniqueObjest:(id)object {
    if ([self containsObject:object] == NO) {
        [self addObject:object];
        return YES;
    }
    return NO;
}

- (NSArray *)addUniqueObjestsFromArray:(NSArray *)array {
    @synchronized (self) {
        NSMutableArray *added = [NSMutableArray new];
        for (id object in array) {
            if([self addUniqueObjest:object]) {
                [added addObject:object];
            }
        }
        
        return added.copy;
    }
}

- (NSArray *)addUniqueObjectsInHeadFromArray:(NSArray *)array {
    @synchronized (self) {
        NSMutableArray *added = [NSMutableArray new];
        for (id object in array) {
            if (![self containsObject:object]) {
                [added addObject:object];
            }
        }
        
        [added addObjectsFromArray:self];
        
        [self removeAllObjects];
        [self addObjectsFromArray:added];
        
        return added.copy;
    }
}

@end

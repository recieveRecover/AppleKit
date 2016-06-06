//
//  NSArray+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 11/23/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)

- (BOOL)containsSameStrings:(NSArray *)secondArray {
    BOOL equal = YES;
    if (self.count != secondArray.count) {
        return NO;
    }
    for (id object in secondArray) {
        if (([object isKindOfClass:[NSString class]] && [self containsObject:object] == NO) ||
            [object isKindOfClass:[NSString class]] == NO) {
                equal = NO;
                break;
        }
    }
    return equal;
}

- (BOOL)containsObjectConformsToPredicate:(NSPredicate *)predicate {
    NSArray *conformedObjects = [self filteredArrayUsingPredicate:predicate];
    return conformedObjects.count > 0;
}

- (BOOL)containsAllObjects:(NSArray *)objects {
    BOOL contains = YES;
    for (id object in objects) {
        if (![self containsObject:object]) {
            contains = NO;
            break;
        }
    }
    return contains;
}

- (NSUInteger)countOfObjectsOfClass:(Class)objectClass {
    NSUInteger count = 0;
    for (id object in self) {
        if ([object isKindOfClass:objectClass]) {
            count ++;
        }
    }
    return count;
}

- (BOOL)isHighestIndex:(NSUInteger)index {
    return self.count - 1 == index;
}

- (id)randomObject {
    return [self objectAtIndex:(0 + arc4random() % (self.count - 1))];
}

- (NSArray *)objectsOfClass:(Class)className {
    NSPredicate *classPredicate = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", className];
    NSArray *predicateResults = [self filteredArrayUsingPredicate:classPredicate];
    return predicateResults;
}

- (NSArray *)indexesOfObjects:(NSArray *)objects {
    NSMutableArray *indexes = [NSMutableArray new];
    for (id anObject in objects) {
        NSUInteger index = [self indexOfObject:anObject];
        if (index != NSNotFound) {
            [indexes addObject:@(index)];
        }
    }
    return indexes;
}

- (NSArray *)arrayOrderedBy:(SEL)selector ascending:(BOOL)ascending {
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:NSStringFromSelector(selector) ascending:ascending];
    NSArray *sortedObjects = [self sortedArrayUsingDescriptors:@[descriptor]];
    return sortedObjects;
}

@end


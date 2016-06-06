//
//  NSArray+Extension.h
//  FTPPlayer
//
//  Created by VladislavEmets on 11/23/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Extension)

/**
 Compare two arrays with strings.
 Return YES if both arrays equak by count and contains same strings (order of objects inside mo important)
 Return NO if objects count is different or some array has unique string OR some of arrays contain not string object
 */
- (BOOL)containsSameStrings:(NSArray *)secondArray;
- (BOOL)containsObjectConformsToPredicate:(NSPredicate *)predicate;
- (BOOL)containsAllObjects:(NSArray *)objects;

- (BOOL)isHighestIndex:(NSUInteger)index;

- (NSUInteger)countOfObjectsOfClass:(Class)objectClass;

- (NSArray *)objectsOfClass:(Class)className;
- (NSArray *)indexesOfObjects:(NSArray *)objects;
- (NSArray *)arrayOrderedBy:(SEL)selector ascending:(BOOL)ascending;

- (id)randomObject;

@end

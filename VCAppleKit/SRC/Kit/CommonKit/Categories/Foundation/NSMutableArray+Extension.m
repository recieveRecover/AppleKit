//
//  NSMutableArray+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 3/17/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "NSMutableArray+Extension.h"

@implementation NSMutableArray (Extension)

- (NSIndexSet *)insertObjects:(NSArray *)objects afterIndex:(NSInteger)index {
    NSIndexSet *indexesToInsert = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(index + 1, objects.count)];
    [self insertObjects:objects atIndexes:indexesToInsert];
    return indexesToInsert;
}

@end

//
//  NSIndexPath+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 12/30/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import "NSIndexPath+Extension.h"
#import "UITableView+Extension.h"

@implementation NSIndexPath (Extension)

+ (NSArray *)indexPathsFromIndex:(NSIndexPath *)path withCount:(NSUInteger)count {
    NSMutableArray *indexPaths = [NSMutableArray new];
    for (int i = 0; i < count; i ++) {
        [indexPaths addObject:[NSIndexPath indexPathForRow:path.row + i + 1 inSection:path.section]];
    }
    return indexPaths.copy;
}

@end

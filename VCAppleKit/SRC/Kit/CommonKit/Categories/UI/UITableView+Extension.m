//
//  UITableView+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 7/6/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "UITableView+Extension.h"

@implementation UITableView (Extension)

#pragma mark
#pragma mark - Public

- (NSIndexPath *)indexPathOfTouchEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    NSIndexPath *path = [self indexPathForRowAtPoint:[touch locationInView:self]];
    return path;
}

- (void)reloadCellAtRow:(NSInteger)index section:(NSInteger)section {
    [self reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:index inSection:section]]
                withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (CGRect)visibleRect {
    CGRect visibleRect;
    visibleRect.origin = self.contentOffset;
    visibleRect.size = self.bounds.size;
    return visibleRect;
}

#pragma mark 
#pragma mark - Private


@end

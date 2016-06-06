//
//  UITableView+Extension.h
//  FTPPlayer
//
//  Created by VladislavEmets on 7/6/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Extension)

- (void)reloadCellAtRow:(NSInteger)index section:(NSInteger)section;
- (NSIndexPath *)indexPathOfTouchEvent:(UIEvent *)event;
- (CGRect)visibleRect;

@end

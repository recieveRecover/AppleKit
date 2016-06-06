//
//  NSLayoutConstraint+Animation.m
//  FTPPlayer
//
//  Created by VladislavEmets on 8/11/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "NSLayoutConstraint+Animation.h"

@implementation NSLayoutConstraint (Animation)

- (void)animateConstraintThroughtPath:(NSArray *)valuesPath withDuration:(NSTimeInterval)duration {
    __weak typeof(self) weakSelf = self;
    NSMutableArray *paths = [NSMutableArray arrayWithArray:valuesPath];
    if (valuesPath.count) {
        DBAnimationBlockOut outBlock = ^() {
            typeof(self) strongSelf = weakSelf;
            strongSelf.constant = [paths[0] floatValue];
            [strongSelf.firstItem layoutIfNeeded];
            [strongSelf.secondItem layoutIfNeeded];
        };
        DBAnimationBlockFinish finishBlock = ^(BOOL finished) {
            [UIView animateWithDuration:duration animations:^() {
                typeof(self) strongSelf = weakSelf;
                strongSelf.constant = [paths[1] floatValue];
                [strongSelf.firstItem layoutIfNeeded];
                [strongSelf.secondItem layoutIfNeeded];
            } completion:^(BOOL finished) {
                if (paths.count > 0) {
                    [weakSelf animateConstraintThroughtPath:[paths subarrayWithRange:NSMakeRange(2, paths.count - 2)]
                                           withDuration:duration];
                }
            }];
        };
        [UIView animateWithDuration:duration
                              delay:0.f
                            options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionCurveLinear
                         animations:outBlock
                         completion:finishBlock];
    }
}

@end

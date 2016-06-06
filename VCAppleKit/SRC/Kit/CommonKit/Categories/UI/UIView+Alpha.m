//
//  UIView+DBAlpha.m
//  FTPPlayer
//
//  Created by VladislavEmets on 6/8/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "UIView+Alpha.h"

@implementation UIView (Alpha)

- (void)setViewAndSubviewsAlpha:(CGFloat)alpha {
    self.alpha = alpha;
    [self setSubviewsAlpha:alpha];
}

- (void)setSubviewsAlpha:(CGFloat)alpha {
    for (UIView *view in self.subviews) {
        view.alpha = alpha;
    }
}

@end

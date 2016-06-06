//
//  UIView+Frame.m
//  FTPPlayer
//
//  Created by VladislavEmets on 3/30/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (void)addSubviewInCenter:(UIView *)view {
    CGRect selfRect = self.bounds;
    view.center = CGPointMake(selfRect.size.width / 2.f, selfRect.size.height / 2.f);
    [self addSubview:view];
}

- (void)setOriginX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setOriginY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setOriginMaxY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y - CGRectGetHeight(self.bounds);
    self.frame = frame;
}

- (void)setSizeWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setSizeHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

@end

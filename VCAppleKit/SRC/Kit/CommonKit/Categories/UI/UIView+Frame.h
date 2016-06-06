//
//  UIView+Frame.h
//  FTPPlayer
//
//  Created by VladislavEmets on 3/30/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

- (void)addSubviewInCenter:(UIView *)view;

- (void)setOriginX:(CGFloat)x;
- (void)setOriginY:(CGFloat)y;
- (void)setOriginMaxY:(CGFloat)y;
- (void)setSizeWidth:(CGFloat)width;
- (void)setSizeHeight:(CGFloat)height;

@end

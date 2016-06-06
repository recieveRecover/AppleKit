//
//  UIView+Corners.m
//  FTPPlayer
//
//  Created by VladislavEmets on 1/15/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UIView+Corners.h"

@implementation UIView (Corners)

- (void)roundTopCornersRoundedCorenersRadii:(CGSize)radii {
    [self roundMaskTo:self
  byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight
      corenersRadii:radii];
}

- (void)roundBottomCornersRoundedCorenersRadii:(CGSize)radii {
    [self roundMaskTo:self
  byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight
      corenersRadii:radii];
}

- (void)roundAllCornersRoundedCorenersRadii:(CGSize)radii {
    [self roundMaskTo:self
  byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight
     corenersRadii:radii];
}

- (void)roundLeftCornersRoundedCorenersRadii:(CGSize)radii {
    [self roundMaskTo:self
    byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerTopLeft
        corenersRadii:radii];
}

- (void)roundRightCornersRoundedCorenersRadii:(CGSize)radii {
    [self roundMaskTo:self
    byRoundingCorners:UIRectCornerBottomRight | UIRectCornerTopRight
        corenersRadii:radii];
}


- (void)roundMaskTo:(UIView *)view byRoundingCorners:(UIRectCorner)corners corenersRadii:(CGSize)radii {
    CGRect bounds = view.bounds;
    UIBezierPath *rounded = [UIBezierPath bezierPathWithRoundedRect:bounds
                                                  byRoundingCorners:corners
                                                        cornerRadii:radii];
    CAShapeLayer *shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
    view.layer.mask = shape;
}

@end

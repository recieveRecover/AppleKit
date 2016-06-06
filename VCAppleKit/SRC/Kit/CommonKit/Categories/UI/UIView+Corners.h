//
//  UIView+Corners.h
//  FTPPlayer
//
//  Created by VladislavEmets on 1/15/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Corners)

- (void)roundTopCornersRoundedCorenersRadii:(CGSize)radii;
- (void)roundBottomCornersRoundedCorenersRadii:(CGSize)radii;
- (void)roundLeftCornersRoundedCorenersRadii:(CGSize)radii;
- (void)roundRightCornersRoundedCorenersRadii:(CGSize)radii;

- (void)roundAllCornersRoundedCorenersRadii:(CGSize)radii;

- (void)roundMaskTo:(UIView *)view byRoundingCorners:(UIRectCorner)corners corenersRadii:(CGSize)radii;

@end

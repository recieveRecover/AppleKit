//
//  UIImage+Crop.h
//  FTPPlayer
//
//  Created by VladislavEmets on 7/17/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Crop)

- (UIImage *)imageCropFromRect:(CGRect)cropRect;
- (UIImage *)squareImage;

@end

//
//  UIImage+Crop.m
//  FTPPlayer
//
//  Created by VladislavEmets on 7/17/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "UIImage+Crop.h"

@implementation UIImage (Crop)

- (UIImage *)imageCropFromRect:(CGRect)cropRect {
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], cropRect);
    UIImage *cropImgage = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return cropImgage;
}

- (UIImage *)squareImage {
    CGRect rectToCrop = CGRectMake(0, 0, self.size.width, self.size.height);
    if (rectToCrop.size.width == rectToCrop.size.height) {
        return self;
    }
    if (rectToCrop.size.width < rectToCrop.size.height) {
        rectToCrop.origin.y = (rectToCrop.size.height - rectToCrop.size.width) / 2;
        rectToCrop.size.height = rectToCrop.size.width;
    } else {
        rectToCrop.origin.x = (rectToCrop.size.width - rectToCrop.size.height) / 2;
        rectToCrop.size.width = rectToCrop.size.height;
    }
    return [self imageCropFromRect:rectToCrop];
}

@end

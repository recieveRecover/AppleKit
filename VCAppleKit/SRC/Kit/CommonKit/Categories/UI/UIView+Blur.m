//
//  UIView+DBBlur.m
//  FTPPlayer
//
//  Created by Voronok Vitaliy on 2/11/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UIView+Blur.h"

@implementation UIView (Blur)

- (UIImage *)imageFromViewWithBlur:(CGFloat)blurRadius {
    UIGraphicsBeginImageContext(self.frame.size);
    
    [[self layer] renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    //Blur the UIImage with a CIFilter
    CIImage *imageToBlur = [CIImage imageWithCGImage:screenshot.CGImage];
    CIFilter *gaussianBlurFilter = [CIFilter filterWithName: @"CIGaussianBlur"];
    
    [gaussianBlurFilter setValue:imageToBlur forKey: @"inputImage"];
    [gaussianBlurFilter setValue:@(blurRadius) forKey: @"inputRadius"];
    
    CIImage *resultImage = [gaussianBlurFilter valueForKey: @"outputImage"];
    
    UIImage *blurredImage = [[UIImage alloc] initWithCIImage:resultImage];

    return blurredImage;
}

@end

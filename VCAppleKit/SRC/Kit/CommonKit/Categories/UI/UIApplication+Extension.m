//
//  UIApplication+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 3/21/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UIApplication+Extension.h"

@implementation UIApplication (Extension)

+ (UIViewController *)rootViewController {
    return [[[[UIApplication sharedApplication] delegate] window] rootViewController];
}

+ (CGFloat)statusBarHeight {
    return [UIApplication sharedApplication].statusBarFrame.size.height;
}

@end

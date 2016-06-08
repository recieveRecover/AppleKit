//
//  UINavigationController+Extension.h
//  FTPPlayer
//
//  Created by VladislavEmets on 10/9/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Extension)

- (void)pushWithStoryboardViewControllerClass:(Class)class animated:(BOOL)animated;
- (CGFloat)navigationBarHeight;

@end

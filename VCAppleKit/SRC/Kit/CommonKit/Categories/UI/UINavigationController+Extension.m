//
//  UINavigationController+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 10/9/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "UINavigationController+Extension.h"

@implementation UINavigationController (Extension)

- (void)pushWithStoryboardViewControllerClass:(Class)theClass animated:(BOOL)animated {
    UIStoryboard *storyboard = [[self.viewControllers lastObject] storyboard];
    UIViewController *controller = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(theClass)];
    [self pushViewController:controller animated:animated];
}

- (CGFloat)navigationBarHeight {
    return CGRectGetHeight(self.navigationBar.frame);
}

@end

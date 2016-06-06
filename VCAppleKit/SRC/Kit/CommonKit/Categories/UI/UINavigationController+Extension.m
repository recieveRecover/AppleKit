//
//  UINavigationController+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 10/9/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "UINavigationController+Extension.h"
#import "UIStoryboard+IDPExtensions.h"

@implementation UINavigationController (Extension)

- (void)pushWithStoryboardViewControllerClass:(Class)class animated:(BOOL)animated {
    UIStoryboard *storyboard = [[self.viewControllers lastObject] storyboard];
    UIViewController *controller = [storyboard instantiateViewControllerWithClass:class];
    [self pushViewController:controller animated:animated];
}

@end

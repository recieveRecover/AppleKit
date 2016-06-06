//
//  UIViewController+Initialization.m
//  FTPPlayer
//
//  Created by VladislavEmets on 11/20/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import "UIViewController+Initialization.h"

@implementation UIViewController (Initialization)

+ (id)controllerWithNibOfClass:(Class)controllerClass {
    return [[self alloc] initWithNibName:NSStringFromClass(controllerClass) bundle:[NSBundle mainBundle]];
}

@end

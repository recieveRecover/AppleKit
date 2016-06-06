//
//  UIViewController+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 1/5/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UIViewController+Extension.h"

@implementation UIViewController (Extension)

- (void)popViewControllerAnimated {
    [self.navigationController popViewControllerAnimated:YES];
}

@end

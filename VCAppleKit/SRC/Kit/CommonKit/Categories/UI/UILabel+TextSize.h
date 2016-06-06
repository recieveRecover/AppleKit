//
//  UILabel+Messages.h
//  Appcaster
//
//  Created by Artem Chabanniy on 9/8/14.
//  Copyright (c) 2014 Teknowledge Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (TextSize)

+ (CGSize)sizeForText:(NSString *)text withFont:(UIFont *)font forMaxWidth:(CGFloat)maxWidth;
- (CGSize)sizeForText:(NSString *)text forMaxWidth:(CGFloat)maxWidth;

@end

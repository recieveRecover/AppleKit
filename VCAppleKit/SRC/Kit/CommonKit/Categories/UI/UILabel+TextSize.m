//
//  UILabel+Messages.m
//  Appcaster
//
//  Created by Artem Chabanniy on 9/8/14.
//  Copyright (c) 2014 Teknowledge Software. All rights reserved.
//

#import "UILabel+TextSize.h"

@implementation UILabel (TextSize)

+ (CGSize)sizeForText:(NSString *)text withFont:(UIFont *)font forMaxWidth:(CGFloat)maxWidth {
    UILabel *singleLineLabel = [UILabel new];
    singleLineLabel.font = font;
    singleLineLabel.numberOfLines = 0;
    
    singleLineLabel.text = text;
    [singleLineLabel sizeToFit];
    if (singleLineLabel.frame.size.width < maxWidth) {
        return singleLineLabel.frame.size;
    }
    
    UILabel *multiplyLineLabel = [UILabel new];
    multiplyLineLabel.font = font;
    multiplyLineLabel.numberOfLines = 0;
    multiplyLineLabel.frame = CGRectMake(0, 0, maxWidth, CGFLOAT_MAX);
    
    multiplyLineLabel.text = text;
    [multiplyLineLabel sizeToFit];
    
    return multiplyLineLabel.frame.size;
}

- (CGSize)sizeForText:(NSString *)text forMaxWidth:(CGFloat)maxWidth {
    return [UILabel sizeForText:text withFont:self.font forMaxWidth:maxWidth];
}

@end

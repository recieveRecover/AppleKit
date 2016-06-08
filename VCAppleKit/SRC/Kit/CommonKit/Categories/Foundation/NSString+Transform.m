//
//  NSString+Transform.m
//  FTPPlayer
//
//  Created by VladislavEmets on 1/27/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "NSString+Transform.h"

@implementation NSString (Transform)

+ (NSString *)shortStringFromNumber:(int)number {
    NSString *string;
    if (number < 1000) {
        string = STRING_WITH_INT(number);
    }
    if (number >= 1000) {
        int thousands = number / 1000;
        int hundreds = (number - thousands * 1000) / 100;
        string = [NSString stringWithFormat:@"%@,%@k", STRING_WITH_INT(thousands), STRING_WITH_INT(hundreds)];
    }
    return string;
}

- (NSString *)localized {
    return NSLocalizedString(self, nil);
}

@end

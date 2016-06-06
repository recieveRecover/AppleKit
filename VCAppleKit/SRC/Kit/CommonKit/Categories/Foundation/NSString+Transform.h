//
//  NSString+Transform.h
//  FTPPlayer
//
//  Created by VladislavEmets on 1/27/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>

#define STRING_WITH_INT(integerVar) \
[NSString stringWithFormat:@"%d", integerVar]

#define STRING_WITH_SELECTOR(selectorName) \
NSStringFromSelector(@selector(selectorName))

#define LOCALIZED(key) NSLocalizedString(key, nil)


@interface NSString (Transform)

+ (NSString *)shortStringFromNumber:(int)number;

@end

//
//  NSString+Extension.h
//  FTPPlayer
//
//  Created by VladislavEmets on 6/5/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define NBSP @"\u00a0"

@interface NSString (Extension)

+ (NSString *)stringWithComponents:(NSArray <NSString *> *)components appendingBy:(NSString *)append;

- (NSString *)stringWithNonBreakingSpaces;
- (NSString *)stringByTrimmingWhitespaces;
- (NSMutableAttributedString *)attributedString:(UIFont *)font color:(UIColor *)color;


- (NSArray *)rangesOfString:(NSString *)searchString;
- (NSArray *)rangesOfStringMatchingPattern:(NSString *)pattern searchRange:(NSRange)searchRange;

- (BOOL)containsCharactersFromSet:(NSCharacterSet *)set;
- (BOOL)isValidEmail;
- (BOOL)isValidPass;
- (BOOL)isValidUsername;
- (BOOL)notEmpty;

NSString* NSStringWithPath (NSArray *path);

@end

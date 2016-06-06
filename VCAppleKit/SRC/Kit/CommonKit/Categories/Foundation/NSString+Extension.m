//
//  NSString+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 6/5/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "NSString+Extension.h"
#import "NSCharacterSet+Extension.h"


@implementation NSString (Extension)

+ (NSString *)stringWithComponents:(NSArray <NSString *> *)components appendingBy:(NSString *)append {
    NSMutableString *string = [NSMutableString new];
    NSUInteger count = components.count;
    for (int i = 0; i < count; i ++) {
        NSString *component = components[i];
        [string appendString:component];
        if (i != count - 1) {
            [string appendString:append];
        }
    }
    return [string copy];
}

- (NSArray *)rangesOfString:(NSString *)searchString {
    NSMutableArray *ranges = [NSMutableArray new];
    NSRange searchRange = NSMakeRange(0, self.length);
    NSRange foundRange;
    while (searchRange.location < self.length) {
        searchRange.length = self.length-searchRange.location;
        foundRange = [self rangeOfString:searchString options:NSCaseInsensitiveSearch range:searchRange];
        if (foundRange.location != NSNotFound) {
            [ranges addObject:[NSValue valueWithRange:foundRange]];
            searchRange.location = foundRange.location+foundRange.length;
        } else {
            break;
        }
    }
    return ranges.copy;
}

- (NSString *)stringWithNonBreakingSpaces {
    NSArray *words = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return [words componentsJoinedByString:NBSP];
}

- (NSString *)stringByTrimmingWhitespaces {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (BOOL)notEmpty {
    return self.stringByTrimmingWhitespaces.length != 0;
}

- (BOOL)containsCharactersFromSet:(NSCharacterSet *)set {
    return [self rangeOfCharacterFromSet:set].location != NSNotFound;
}

- (BOOL)isValidEmail {
    BOOL stricterFilter = YES; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

- (BOOL)isValidUsername {
    return [self rangeOfCharacterFromSet:[NSCharacterSet usernameCharacterSet].invertedSet].location == NSNotFound;
}

- (BOOL)isValidPass {
    NSString *passRegex = @"^.{6,255}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", passRegex];
    BOOL isValid = [emailTest evaluateWithObject:[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
    return isValid;
}

- (NSMutableAttributedString *)attributedString:(UIFont *)font color:(UIColor *)color {
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:self
                                                                             attributes:@{NSFontAttributeName : font,
                                                                                          NSForegroundColorAttributeName : color}];
    return text;
}

- (NSArray *)rangesOfStringMatchingPattern:(NSString *)pattern searchRange:(NSRange)searchRange {
    NSMutableArray *rangesForUserHandles = [NSMutableArray new];
    NSError *error = nil;
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:&error];
    NSArray *matches = [regex matchesInString:self options:0 range:searchRange];
    for (NSTextCheckingResult *match in matches) {
        NSRange matchRange = [match range];
        [rangesForUserHandles addObject:[NSValue valueWithRange:matchRange]];
    }
    return rangesForUserHandles;
}

NSString* NSStringWithPath (NSArray *path) {
    NSMutableString *pathString = [NSMutableString new];
    int count = [path count];
    for (int i = 0; i < count; i ++) {
        id pathNode = path[i];
        if ([pathNode isKindOfClass:[NSString class]] == NO) {
            return nil;
        }
        [pathString appendString:pathNode];
        if (i != count - 1) {
            [pathString appendString:@"."];
        }
    }
    return pathString;
}

@end

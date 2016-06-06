//
//  NSString+DBHandle.m
//  FTPPlayer
//
//  Created by VladislavEmets on 5/6/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "NSString+DBHandle.h"
#import "NSString+Extension.h"

@implementation NSString (DBHandle)

#pragma mark
#pragma mark - Public

- (BOOL)isHandle {
    NSRange range = [self rangeOfString:@"@"];
    if (range.location == 0 &&
        [self stringByTrimmingWhitespaces].length > 1 &&
        [[self substringFromIndex:1] isValidUsername]) {
        return YES;
    }
    return NO;
}

- (NSString *)isFirstPathComponentContainsHandle {
    NSString *firstWord = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].firstObject;
    return  [firstWord isHandle] ? firstWord : nil;
}

- (NSString *)isLastPathComponentContainsHandle {
    NSString *lastWord = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].lastObject;
    return  [lastWord isHandle] ? lastWord : nil;
}

- (NSString *)handle {
    if ([self isHandle]) {
        return [self substringFromIndex:1];
    }
    return self;
}

- (NSArray *)getRangesOfUserHandlersInRange:(NSRange)searchRange {
    return [self rangesOfStringMatchingPattern:@"(?<!\\w)@([\\w\\_]+)?" searchRange:searchRange];
}

- (NSString *)stringByRaplaceLinksToHandlers {
    NSString *selfCopy = [self copy];
    NSArray *rangesOfHandlers = [selfCopy getRangesOfLinksInRange:NSMakeRange(0, selfCopy.length)];
    while (rangesOfHandlers.count > 0) {
        NSRange range = [rangesOfHandlers.firstObject rangeValue];
        NSString *link = [selfCopy substringWithRange:range];
        NSString *replacement = [link stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"[]"]];
        selfCopy = [selfCopy stringByReplacingCharactersInRange:range withString:replacement];
        rangesOfHandlers = [selfCopy getRangesOfLinksInRange:NSMakeRange(0, selfCopy.length)];
    }
    return selfCopy;
}

- (NSString *)stringByRaplaceHandlersToLinks {
    NSString *selfCopy = [self copy];
    NSRange searchRange = NSMakeRange(0, self.length);
    NSArray *rangesOfHandlers = [selfCopy getRangesOfUserHandlersInRange:searchRange];
    while (rangesOfHandlers.count > 0) {
        NSRange range = [rangesOfHandlers.firstObject rangeValue];
        NSString *handler = [selfCopy substringWithRange:range];
        NSString *replacement = [NSString stringWithFormat:@"[%@]", handler];
        selfCopy = [selfCopy stringByReplacingCharactersInRange:range withString:replacement];
        
        NSInteger location = range.location + replacement.length;
        searchRange = NSMakeRange(location, selfCopy.length - location);
        rangesOfHandlers = [selfCopy getRangesOfUserHandlersInRange:searchRange];
    }
    return selfCopy;
}

#pragma mark
#pragma mark - Private

- (NSArray *)getRangesOfLinksInRange:(NSRange)searchRange {
    return [self rangesOfStringMatchingPattern:@"\\[(.*?)\\]" searchRange:searchRange];
}


@end

//
//  UITextView+Handler.m
//  FTPPlayer
//
//  Created by VladislavEmets on 5/10/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UITextView+Handler.h"
#import "NSString+DBHandle.h"
#import "NSString+Extension.h"

@implementation UITextView (Handler)

- (void)startMentionAfterChangeTextInRange:(NSRange)range
                           replacementText:(NSString *)text
                              handlerBlock:(DBStartHandlerTyping)handlerBlock {
    NSRange editingRange = NSMakeRange(range.location, text.length);
    NSString *resultString = [self.text stringByReplacingCharactersInRange:range withString:text];
    NSArray *components = [resultString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    for (NSString *substring in components) {
        if ([substring isHandle]) {
            NSArray *rangesOfHandle = [resultString rangesOfString:substring];
            for (NSValue *valueRange in rangesOfHandle) {
                NSRange foundRange = [valueRange rangeValue];
                NSRange intersect = NSIntersectionRange(foundRange, editingRange);
                if (intersect.length > 0) {
                    if (handlerBlock) {
                        handlerBlock(substring, resultString, foundRange);
                    }
                }
            }
        }
    }
}

@end

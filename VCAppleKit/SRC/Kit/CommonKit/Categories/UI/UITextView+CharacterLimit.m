//
//  UITextView+CharacterLimit.m
//  FTPPlayer
//
//  Created by VladislavEmets on 4/6/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UITextView+CharacterLimit.h"

@implementation UITextView (CharacterLimit)

- (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text characterLimit:(NSUInteger)limit {
    if (range.length + range.location > self.text.length) {
        return NO;
    }
    NSUInteger currentLength = self.text.length;
    NSUInteger newLength = currentLength + [text length] - range.length;
    NSUInteger freeSpace = limit - currentLength;
    BOOL shouldChange = newLength <= limit;
    if (!shouldChange) {
        NSString *currentText = self.text;
        NSString *enabledText = [text substringWithRange:NSMakeRange(0, freeSpace)];
        self.text = [NSString stringWithFormat:@"%@%@", currentText, enabledText];
    }
    return shouldChange;
}

@end

//
//  UITextView+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 3/18/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "UITextView+Extension.h"

@implementation UITextView (Extension)

- (unsigned)countOfTypedLines {
    NSLayoutManager *layoutManager = [self layoutManager];
    unsigned numberOfLines, index, numberOfGlyphs = [layoutManager numberOfGlyphs];
    NSRange lineRange;
    for (numberOfLines = 0, index = 0; index < numberOfGlyphs; numberOfLines++){
        (void) [layoutManager lineFragmentRectForGlyphAtIndex:index
                                               effectiveRange:&lineRange];
        index = NSMaxRange(lineRange);
    }
    return numberOfLines;
}

@end

//
//  UITextView+CharacterLimit.h
//  FTPPlayer
//
//  Created by VladislavEmets on 4/6/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (CharacterLimit)

- (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text characterLimit:(NSUInteger)limit;

@end

//
//  UITextView+Handler.h
//  FTPPlayer
//
//  Created by VladislavEmets on 5/10/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^DBStartHandlerTyping)(NSString *handler, NSString *result, NSRange handleRange);

@interface UITextView (Handler)

- (void)startMentionAfterChangeTextInRange:(NSRange)range
                           replacementText:(NSString *)text
                              handlerBlock:(DBStartHandlerTyping)handlerBlock;

@end

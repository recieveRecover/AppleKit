//
//  NSString+DBHandle.h
//  FTPPlayer
//
//  Created by VladislavEmets on 5/6/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DBHandle)

- (NSString *)isLastPathComponentContainsHandle;
- (NSString *)isFirstPathComponentContainsHandle;
- (NSString *)handle;
- (BOOL)isHandle;

- (NSArray *)getRangesOfUserHandlersInRange:(NSRange)searchRange;
- (NSString *)stringByRaplaceLinksToHandlers;
- (NSString *)stringByRaplaceHandlersToLinks;

@end

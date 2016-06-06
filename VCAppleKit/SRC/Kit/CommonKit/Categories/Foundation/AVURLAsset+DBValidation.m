//
//  AVAsset+DBValidation.m
//  FTPPlayer
//
//  Created by VladislavEmets on 6/5/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "AVURLAsset+DBValidation.h"

@implementation AVURLAsset (DBValidation)

- (BOOL)isAssetInfoValidForKeys:(NSArray *)requestedKeys error:(NSError **)outError {
    /* Make sure that the value of each key has loaded successfully. */
    for (NSString *thisKey in requestedKeys) {
        AVKeyValueStatus keyStatus = [self statusOfValueForKey:thisKey error:outError];
        if (keyStatus == AVKeyValueStatusFailed) {
            return NO;
        }
        /* If you are also implementing the use of -[AVAsset cancelLoading], add your code here to bail
         out properly in the case of cancellation. */
    }
    return YES;
}

- (BOOL)isAssetPlayableError:(NSError **)outError {
    BOOL isPlayable = YES;
    if (self.playable == NO) {
        NSString *localizedDescription = NSLocalizedString(@"Item cannot be played", @"Item cannot be played description");
        NSString *localizedFailureReason = NSLocalizedString(@"The assets tracks were loaded, but could not be made playable.", @"Item cannot be played failure reason");
        NSDictionary *errorDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                   localizedDescription, NSLocalizedDescriptionKey,
                                   localizedFailureReason, NSLocalizedFailureReasonErrorKey,
                                   nil];
        *outError = [NSError errorWithDomain:NSStringFromClass(self.class)
                                        code:0
                                    userInfo:errorDict];
        isPlayable = NO;
    }
    return isPlayable;
}

@end

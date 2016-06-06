//
//  AVAsset+DBValidation.h
//  FTPPlayer
//
//  Created by VladislavEmets on 6/5/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface AVURLAsset (DBValidation)

- (BOOL)isAssetInfoValidForKeys:(NSArray *)requestedKeys error:(NSError **)outError;
- (BOOL)isAssetPlayableError:(NSError **)outError;

@end

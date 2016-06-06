//
//  MPFeedbackCommand+DBExtensions.h
//  FTPPlayer
//
//  Created by Anton Rayev on 12/7/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import <MediaPlayer/MediaPlayer.h>

@interface MPFeedbackCommand (DBExtensions)

/// sets both localizedTitle and localizedShortTitle
- (void)setTitle:(NSString *)title;

@end

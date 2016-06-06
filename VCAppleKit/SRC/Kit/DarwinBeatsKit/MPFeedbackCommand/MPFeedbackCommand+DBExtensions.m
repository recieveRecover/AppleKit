//
//  MPFeedbackCommand+DBExtensions.m
//  FTPPlayer
//
//  Created by Anton Rayev on 12/7/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import "MPFeedbackCommand+DBExtensions.h"

@implementation MPFeedbackCommand (DBExtensions)

- (void)setTitle:(NSString *)title {
    self.localizedTitle = title;
    self.localizedShortTitle = title;
}

@end

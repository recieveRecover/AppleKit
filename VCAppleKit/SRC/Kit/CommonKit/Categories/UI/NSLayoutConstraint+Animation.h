//
//  NSLayoutConstraint+Animation.h
//  FTPPlayer
//
//  Created by VladislavEmets on 8/11/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^DBAnimationBlockOut)(void);
typedef void(^DBAnimationBlockFinish)(BOOL finished);

@interface NSLayoutConstraint (Animation)

/**
 Animate constraint value through array of values
 @param valuesPath array with NSNumbers for animation, array count must be multiple of 2
 */
- (void)animateConstraintThroughtPath:(NSArray *)valuesPath withDuration:(NSTimeInterval)duration;

@end

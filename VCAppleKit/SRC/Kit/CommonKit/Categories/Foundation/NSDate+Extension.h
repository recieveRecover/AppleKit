//
//  NSDate+Extension.h
//  FTPPlayer
//
//  Created by VladislavEmets on 9/8/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SECONDS_WITH_DAYS(daysCount)60*60*24*daysCount
#define SECONDS_WITH_MINUTES(minutes)60*minutes

@interface NSDate (Extension)

- (NSDate *)dateMinusYears:(NSInteger)years;
- (NSInteger)hoursDifferenceWithDate:(NSDate *)date;
- (NSInteger)minutesDifferenceWithDate:(NSDate *)date;

@end

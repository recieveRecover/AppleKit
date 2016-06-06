//
//  NSDate+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 9/8/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "NSDate+Extension.h"

static NSInteger const kSecondsInHour   = 3600;
static NSInteger const kSecondsInMinute = 60;

@implementation NSDate (Extension)

#pragma mark 
#pragma mark - Public

- (NSDate *)dateMinusYears:(NSInteger)years {
    NSCalendar *gregorian = [NSCalendar currentCalendar];
    NSDateComponents *components = [gregorian components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:self];
    NSInteger year = components.year;
    [components setYear:year - years];
    NSDate *dateBehind = [gregorian dateFromComponents:components];
    return dateBehind;
}

- (NSInteger)minutesDifferenceWithDate:(NSDate *)date {
    return [self differenceWithDate:date withSecondsUnit:kSecondsInMinute];
}

- (NSInteger)hoursDifferenceWithDate:(NSDate *)date {
    return [self differenceWithDate:date withSecondsUnit:kSecondsInHour];
}

#pragma mark
#pragma mark - Private

- (NSInteger)differenceWithDate:(NSDate *)date withSecondsUnit:(NSInteger)timeUnit {
    NSDate *date1 = self;
    NSDate *date2 = date;
    NSTimeInterval distanceBetweenDates = [date1 timeIntervalSinceDate:date2];
    NSInteger hoursBetweenDates = distanceBetweenDates / timeUnit;
    return hoursBetweenDates;
}

@end

//
//  NSCharacterSet+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 5/6/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "NSCharacterSet+Extension.h"

@implementation NSCharacterSet (Extension)

+ (NSCharacterSet *)usernameCharacterSet {
    NSMutableCharacterSet *set = [NSMutableCharacterSet new];
    [set formUnionWithCharacterSet:[NSCharacterSet uppercaseLetterCharacterSet]];
    [set formUnionWithCharacterSet:[NSCharacterSet lowercaseLetterCharacterSet]];
    [set formUnionWithCharacterSet:[NSCharacterSet decimalDigitCharacterSet]];
    [set formUnionWithCharacterSet:[NSCharacterSet characterSetWithCharactersInString:@"-_.()"]];
    return set;
}

@end

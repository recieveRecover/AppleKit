//
//  NSDictionary+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 5/20/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import "NSDictionary+Extension.h"

@implementation NSDictionary (Extension)

- (BOOL)containsKey:(id)key {
    return [self.allKeys containsObject:key];
}

@end

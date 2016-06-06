//
//  NSError+Extension.m
//  FTPPlayer
//
//  Created by VladislavEmets on 7/24/15.
//  Copyright (c) 2015 VladislavEmets. All rights reserved.
//

#import "NSError+Extension.h"

@implementation NSError (Extension)

+ (NSError *)errorWithDescription:(NSString *)description {
    NSError *error = nil;
    if ([description isKindOfClass:[NSString class]]) {
        error = [NSError errorWithDomain:NSStringFromClass(self.class)
                                    code:0
                                userInfo:@{NSLocalizedDescriptionKey : description}];
    }
    return error;
}

@end

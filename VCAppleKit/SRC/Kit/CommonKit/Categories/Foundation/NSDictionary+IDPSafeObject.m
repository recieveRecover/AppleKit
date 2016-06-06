//
//  NSDictionary+IDPSafeObject.m
//  PriceSwarm
//
//  Created by VladislavChabak on 1/19/15.
//  Copyright (c) 2015 Faris Alqadah. All rights reserved.
//

#import "NSDictionary+IDPSafeObject.h"

@implementation NSDictionary (IDPSafeObject)

- (id)safeObjectForkey:(id)key ofClass:(Class)expectedClass {
    id object = nil;
    if ([[self objectForKey:key] isKindOfClass:expectedClass]) {
        object = [self objectForKey:key];
    }
    return object;
}

- (NSString *)safeStringForkey:(id)key {
    return [self safeObjectForkey:key ofClass:[NSString class]];
}

- (NSArray *)safeArrayForkey:(id)key {
    return [self safeObjectForkey:key ofClass:[NSArray class]];
}

- (NSNumber *)safeNumberForkey:(id)key {
    return [self safeObjectForkey:key ofClass:[NSNumber class]];
}

- (NSDictionary *)safeDictionaryForkey:(id)key {
    return [self safeObjectForkey:key ofClass:[NSDictionary class]];
}


@end

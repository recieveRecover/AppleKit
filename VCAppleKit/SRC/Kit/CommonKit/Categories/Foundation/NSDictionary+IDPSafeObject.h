//
//  NSDictionary+IDPSafeObject.h
//  PriceSwarm
//
//  Created by VladislavChabak on 1/19/15.
//  Copyright (c) 2015 Faris Alqadah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (IDPSafeObject)

- (id)safeObjectForkey:(id)key ofClass:(Class)expectedClass;

- (NSString *)safeStringForkey:(id)key;
- (NSNumber *)safeNumberForkey:(id)key;
- (NSArray *)safeArrayForkey:(id)key;
- (NSDictionary *)safeDictionaryForkey:(id)key;

@end

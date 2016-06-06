//
//  NSIndexPath+Extension.h
//  FTPPlayer
//
//  Created by VladislavEmets on 12/30/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSIndexPath (Extension)

+ (NSArray *)indexPathsFromIndex:(NSIndexPath *)path withCount:(NSUInteger)count;

@end

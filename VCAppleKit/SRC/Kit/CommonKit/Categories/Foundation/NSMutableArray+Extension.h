//
//  NSMutableArray+Extension.h
//  FTPPlayer
//
//  Created by VladislavEmets on 3/17/16.
//  Copyright © 2016 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Extension)

- (NSIndexSet *)insertObjects:(NSArray *)objects afterIndex:(NSInteger)index;

@end

//
//  NSMutableArray+DBUniqueObjects.h
//  FTPPlayer
//
//  Created by VladislavEmets on 11/17/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (DBUniqueObjects)

- (BOOL)addUniqueObjest:(id)object;
- (NSArray *)addUniqueObjestsFromArray:(NSArray *)array;
- (NSArray *)addUniqueObjectsInHeadFromArray:(NSArray *)array;

@end

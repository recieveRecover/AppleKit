//
//  IDPBlockMacros.h
//  Chatboard
//
//  Created by VladislavEmets on 6/8/16.
//  Copyright © 2016 IDAP. All rights reserved.
//

#define IDPWeakify(objectName) \
__weak __typeof(objectName) __IDPWeakified_##objectName = objectName;

#define IDPStrongify(objectName) \
__strong __typeof(objectName) objectName = __IDPWeakified_##objectName; \


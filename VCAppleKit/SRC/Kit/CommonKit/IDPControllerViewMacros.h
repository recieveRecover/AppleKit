//
//  IDPControllerViewMacros.h
//  Chatboard
//
//  Created by VladislavEmets on 6/7/16.
//  Copyright © 2016 IDAP. All rights reserved.
//

#define IDPViewGetterSynthesize(viewClass, selector) \
- (viewClass *)selector { \
    if ([self isViewLoaded] && [self.view isKindOfClass:[viewClass class]]) { \
        return (viewClass *)self.view; \
    } \
\
    return nil; \
}

#define IDPViewProperty(viewClass, propertyName) \
@property (nonatomic, readonly)   viewClass   *propertyName;

#define IDPViewControllerProperty(viewControllerClass, propertyName, viewClass) \
@interface viewControllerClass (__IDPView) \
IDPViewProperty(viewClass, propertyName) \
\
@end \
\
@implementation viewControllerClass (__IDPView) \
\
@dynamic propertyName; \
\
IDPViewGetterSynthesize(viewClass, propertyName) \
\
@end
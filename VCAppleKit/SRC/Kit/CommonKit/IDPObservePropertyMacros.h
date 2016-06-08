//
//  IDPObservePropertyMacros.h
//  Chatboard
//
//  Created by VladislavEmets on 6/7/16.
//  Copyright © 2016 IDAP. All rights reserved.
//

#define IDPNonatomicARCPropertySynthesizeWithObserver(ivar, newObj) do{if(ivar!=newObj){[ivar removeObserver:self];ivar=newObj;[ivar addObserver:self];}}while(0)
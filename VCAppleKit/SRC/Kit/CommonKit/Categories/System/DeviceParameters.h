//
//  DeviceParameters.h
//  FTPPlayer
//
//  Created by VladislavEmets on 12/25/15.
//  Copyright © 2015 VladislavEmets. All rights reserved.
//

#import <sys/utsname.h>

NSString* machineName() {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine
                              encoding:NSUTF8StringEncoding];
}
//
//  SOUserManager.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/29.
//

#import "SOUserManager.h"
static SOUserManager *_userManager;
@implementation SOUserManager

+ (instancetype)shareManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userManager = [[SOUserManager alloc] init];
    });
    return _userManager;
}

- (NSString *)currentUserToken {
    return @"";
}

- (SOUserStatus)currentUserStatus {
    return SOUserStatusUnknow;
}

@end

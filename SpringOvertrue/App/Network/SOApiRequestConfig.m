//
//  SOApiRequestConfig.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import "SOApiRequestConfig.h"
#import "SOUserManager.h"
#import "SOAppInfo.h"

@implementation SOApiRequestConfig
- (instancetype)init {
    self = [super init];
    if (self) {
        _params = [NSMutableDictionary dictionary];
        [self configPublicParams];
    }
    return self;
}

- (void)configPublicParams {
    SOUserManager *userManager = [SOUserManager shareManager];
    if ([userManager currentUserStatus] == SOUserStatusLogin) {
        if ([userManager currentUserToken]) {
            self.params[@"token"] = [userManager currentUserToken];
        }
    }
    self.params[@"app_version"] = [[SOAppInfo shareInstance] appVersion];
    self.params[@"os_version"] = [[SOAppInfo shareInstance] osVersion];
    self.params[@"phone_model"] = [[SOAppInfo shareInstance] phoneModel];
    self.params[@"channel"] = [[SOAppInfo shareInstance] channelID];
    self.params[@"terminal_id"] = [[SOAppInfo shareInstance] terminalID];
    self.params[@"nonce"] = [[SOAppInfo shareInstance] nonce];
}

- (void)setParams:(NSMutableDictionary *)params {
    [self.params addEntriesFromDictionary:params];
}

@end

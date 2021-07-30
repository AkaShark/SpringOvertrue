//
//  SOAppInfo.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import "SOAppInfo.h"
#import <UIKit/UIKit.h>
#import "UIDeviceHardware.h"

@implementation SOAppInfo
static SOAppInfo *_instance;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[SOAppInfo alloc] init];
    });
    return _instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResignActiveNotification) name:UIApplicationWillResignActiveNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidBecomeActiveNotification) name:UIApplicationDidBecomeActiveNotification object:nil];
    }
    return self;
}

/// App前后台信息
- (void)applicationWillResignActiveNotification {
    
}

- (void)applicationDidBecomeActiveNotification {
    
}

/// App Info
- (BOOL)isGuestLogin {
    return NO;
}

- (NSString *)appName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"];
}

- (NSString *)appVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

- (NSString *)osVersion {
    return [[UIDevice currentDevice] systemVersion];
}
- (NSString *)phoneModel {
    return [UIDeviceHardware platformStringSimple];
}

- (NSString *)channelID {
    return @"1001";
}

- (NSString *)terminalID {
    return @"1";
}

- (NSString *)nonce {
    return [[NSUUID UUID].UUIDString stringByReplacingOccurrencesOfString:@"-" withString:@""];
}

- (NSString *)appBuildVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey];
}

- (NSString *)bundleID {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleIdentifierKey];
}




@end

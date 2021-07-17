//
//  LaunchWxSDK.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/16.
//

#import "LaunchWxSDK.h"
#import "LaunchManager.h"
#import <SOWXApiManager.h>
static  NSString *kAppWXSDK = @"";
static  NSString *kAppWXUniversalLink = @"";

@implementation LaunchWxSDK

- (instancetype)init {
    self = [super init];
    if (self) {
        [[LaunchManager defaultManager] addTask:self];
    }
    return self;
}

- (NSString *)taskName {
    return @"LaunchWxTask";
}

- (SOLaunchTaskPriority)taskProiority {
    return SOLaunchTaskPriorityVeryHigh;
}

- (void)run {
    [[SOWXApiManager defaultManager] setupWXSDKWithApp:kAppWXSDK universalLink:kAppWXUniversalLink];
    
}


@end

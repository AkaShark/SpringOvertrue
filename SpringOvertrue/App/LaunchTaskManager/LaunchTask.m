//
//  LaunchTask.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/15.
//

#import "LaunchTask.h"

@implementation LaunchTask
- (instancetype)init
{
    self = [super init];
    if (self) {
        _removeAfterFinish = YES; // 一般的服务直接用完就扔了就好了
    }
    return self;
}
- (NSString *)taskName {
    return [[self class] description];
}

- (SOLaunchTaskPriority)taskProiority {
    return SOLaunchTaskPriorityNormal;
}

- (void)run {
    //
}

@end

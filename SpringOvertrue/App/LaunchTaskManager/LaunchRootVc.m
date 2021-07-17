//
//  LaunchRootVc.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/16.
//

#import "LaunchRootVc.h"
#import "LaunchManager.h"
#import <UIKit/UIKit.h>

@implementation LaunchRootVc
- (instancetype)init {
    self = [super init];
    if (self) {
        [[LaunchManager defaultManager] addTask:self];
    }
    return self;
}

- (NSString *)taskName {
    return @"LaunchRootVcTask";
}

- (SOLaunchTaskPriority)taskProiority {
    return SOLaunchTaskPriorityNormal;
}

- (void)run {
    
}

@end

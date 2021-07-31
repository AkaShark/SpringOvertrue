//
//  LaunchRootVc.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/16.
//

#import "LaunchRootVc.h"
#import "LaunchManager.h"
#import <UIKit/UIKit.h>
#import "SOAppDelegate.h"
#import "SOLoginRegisterViewController.h"

@implementation LaunchRootVc
- (instancetype)init {
    self = [super init];
    if (self) {
        
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
    SOAppDelegate *appDelegate = (SOAppDelegate *)[[UIApplication sharedApplication] delegate];
    // 初始化window
    appDelegate.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    appDelegate.window.rootViewController = [[SOLoginRegisterViewController alloc] init];
    [appDelegate.window makeKeyAndVisible];
}

@end

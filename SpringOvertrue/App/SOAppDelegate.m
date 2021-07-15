//
//  SOAppDelegate.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/14.
//

#import "SOAppDelegate.h"
#import "LaunchManager.h"
@implementation SOAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    [self launchTask];
    return YES;
}

- (void)launchTask {
    [[LaunchManager defaultManager] runLaunchTasks];
}

@end

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
    // 初始化window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    // launchTask
    [self launchTask];
    
    return YES;
}

- (void)launchTask {
    [[LaunchManager defaultManager] runLaunchTasks];
}

@end

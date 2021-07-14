//
//  SOAppDelegate.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/14.
//

#import "SOAppDelegate.h"

@implementation SOAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    return YES;
}
@end

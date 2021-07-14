//
//  main.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/14.
//

#import <UIKit/UIKit.h>
#import "SOAppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([SOAppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

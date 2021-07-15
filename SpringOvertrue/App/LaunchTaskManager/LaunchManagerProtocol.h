//
//  LaunchManagerProtocol.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class LaunchTask;
@protocol LaunchManagerProtocol <NSObject>
- (void)addTask:(LaunchTask *)task;
- (void)removeTask:(LaunchTask *)task;
@end

NS_ASSUME_NONNULL_END

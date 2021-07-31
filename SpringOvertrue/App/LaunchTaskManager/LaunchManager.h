//
//  LaunchManager.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/15.
//

#import <Foundation/Foundation.h>
#import "LaunchManagerProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface LaunchManager : NSObject <LaunchManagerProtocol>
+ (instancetype)defaultManager;
@end

NS_ASSUME_NONNULL_END

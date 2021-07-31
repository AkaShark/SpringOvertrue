//
//  SOWXApiManager.h
//
//  Created by Sharker on 2021/7/16.
//

#import <Foundation/Foundation.h>
#import "WXApi.h"

NS_ASSUME_NONNULL_BEGIN
extern NSString* kWXLoginNotification;
typedef NS_ENUM(NSInteger, SOWXReqType) {
    SOWXReqLoginType,
    
};
@interface SOWXApiManager : NSObject<WXApiDelegate>

+ (instancetype)defaultManager;

/// 启动微信SDK
- (void)setupWXSDKWithApp:(NSString *)app universalLink:(NSString *)universalLink;

// 发起登录请求
- (void)sendWXRequestWithType:(SOWXReqType)type
                        scope:(NSString *)scopeCode
                        state:(NSString *)requestState
                   completion:(void(^)(BOOL success))completion;

/// 已经安装微信
- (BOOL)appWXInstalled;

+ (BOOL)handleOpenURL:(NSURL *)url delegate:(nullable id<WXApiDelegate>)delegate;


@end

NS_ASSUME_NONNULL_END

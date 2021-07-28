//
//  SOAppInfo.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SOAppInfo : NSObject
+(instancetype)shareInstance;
@property (nonatomic, readonly, copy) NSString *appName;
@property (nonatomic, readonly, copy) NSString *appVersion;
@property (nonatomic, readonly, copy) NSString *osVersion;
@property (nonatomic, readonly, copy) NSString *phone_model;
@property (nonatomic, readonly, copy) NSString *channelID;
@property (nonatomic, readonly, copy) NSString *terminalID;
@property (nonatomic, readonly, copy) NSString *nonce;
@property (nonatomic, readonly, copy) NSString *appBuildVersion;
@property (nonatomic, readonly, copy) NSString *bundleID;
@property (nonatomic, readonly, copy) NSString *sessionID; /// 每次启动都会改变

@end

NS_ASSUME_NONNULL_END

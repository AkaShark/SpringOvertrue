//
//  SOUserManager.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, SOUserStatus) {
    SOUserStatusLogin = 0,
    SOUserStatusUnLogin,
    SOUserStatusUnknow,
};

@interface SOUserManager : NSObject

+ (instancetype)shareManager;

- (NSString *)currentUserToken;

- (SOUserStatus)currentUserStatus;
@end

NS_ASSUME_NONNULL_END

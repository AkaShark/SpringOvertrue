//
//  SOBusinessRequest.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/8/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/// Error
@class SOApiError;
/// User
@class SOLoginRegisterRespModel, SOLoginRegisterReqModel;
@interface SOBusinessRequest : NSObject

/// 请求验证码
/// @param reqModel 请求Model
/// @param completeHandle 回调
+ (void)requestSendCaptchaWithReqModel:(SOLoginRegisterReqModel *)reqModel
                           completion:(void(^)(SOLoginRegisterRespModel *respModel, SOApiError *error))completeHandle;



/// 验证验证码
/// @param reqModel 请求Model
/// @param completeHandle 回调
+ (void)requestVerifyCaptchaWithReqModel:(SOLoginRegisterReqModel *)reqModel
                              completion:(void(^)(SOLoginRegisterRespModel *respModel, SOApiError *error))completeHandle;

@end

NS_ASSUME_NONNULL_END

//
//  SOBusinessRequest.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/8/1.
//

#import "SOBusinessRequest.h"
#import "SOBusinessApi.h"
#import "SOApiRequestClient.h"
#import "SOApiRequestConfig.h"
#import "SOLoginRegisterReqModel.h"
#import "SOLoginRegisterRespModel.h"
@implementation SOBusinessRequest

+ (void)requestSendCaptchaWithReqModel:(SOLoginRegisterReqModel *)reqModel completion:(void (^)(SOLoginRegisterRespModel * _Nonnull, SOApiError * _Nonnull))completeHandle {
    [SOApiRequestClient so_makeRequest:^(SOApiRequestConfig * _Nonnull config) {
        config.route = UserSendCaptcha;
        if (reqModel.phoneNum) {
            config.params[@"phoneNum"] = reqModel.phoneNum;
        }
    } requestType:SORequestUnPostType completion:^(id  _Nullable responseObject, SOApiError * _Nullable error) {
        SOLoginRegisterRespModel *respModel = nil;
        if (error) {
            NSLog(@"发送验证码错误:\n %@", error);
        } else {
            respModel = [[SOLoginRegisterRespModel alloc] initWithDictionary:responseObject error:nil];
        }
        !completeHandle?:completeHandle(respModel, error);
    }];
}

+ (void)requestVerifyCaptchaWithReqModel:(SOLoginRegisterReqModel *)reqModel completion:(void (^)(SOLoginRegisterRespModel * _Nonnull, SOApiError * _Nonnull))completeHandle {
    [SOApiRequestClient so_makeRequest:^(SOApiRequestConfig * _Nonnull config) {
        config.route = UserVerifyCaptcha;
        if (reqModel.phoneNum.length > 0) {
            config.params[@"phoneNum"] = reqModel.phoneNum;
        }
        if (reqModel.captcha.length > 0) {
            config.params[@"captcha"] = reqModel.captcha;
        }
    } requestType:SORequestUnPostType completion:^(id  _Nullable responseObject, SOApiError * _Nullable error) {
        SOLoginRegisterRespModel *respModel = nil;
        if (error) {
            NSLog(@"验证验证码错误:\n %@", error);
        } else {
            respModel = [[SOLoginRegisterRespModel alloc] initWithDictionary:responseObject error:nil];
        }
        !completeHandle?:completeHandle(respModel, error);
    }];
}

@end

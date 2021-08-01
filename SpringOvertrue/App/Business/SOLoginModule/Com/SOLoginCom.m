//
//  SOLoginCom.m
//
//  Created by Sharker on 2021/7/17.
//

#import "SOLoginCom.h"
#import "SOBusinessRequest.h"
#import "SOLoginRegisterReqModel.h"
@implementation SOLoginCom

- (void)requestSMSCodeWithPhoneNum:(NSString *)number completion:(void(^)(SOLoginRegisterRespModel *respModel))completion {
    SOLoginRegisterReqModel *reqModel = [[SOLoginRegisterReqModel alloc] init];
    if (number.length > 0) {
        reqModel.phoneNum = number;
    }
    [SOBusinessRequest requestSendCaptchaWithReqModel:reqModel completion:^(SOLoginRegisterRespModel * _Nonnull respModel, SOApiError * _Nonnull error) {
        if (!error) {
            NSLog(@"success");
        }
        !completion?:completion(respModel);
    }];
}

- (void)verifySMSCodePhoneNum:(NSString *)number SMSCode:(NSString *)code completion:(void(^)(SOLoginRegisterRespModel *respModel))completion {
    SOLoginRegisterReqModel *reqModel = [[SOLoginRegisterReqModel alloc] init];
    if (number.length > 0) {
        reqModel.phoneNum = number;
    }
    if (code.length > 0) {
        reqModel.captcha = code;
    }
     [SOBusinessRequest requestVerifyCaptchaWithReqModel:reqModel completion:^(SOLoginRegisterRespModel * _Nonnull respModel, SOApiError * _Nonnull error) {
        if (!error) {
            NSLog(@"success");
        }
        !completion?:completion(respModel);
    }];
}

- (void)showSMSCodeView {
    
}


@end

//
//  SOLoginCom.h
//
//  Created by Sharker on 2021/7/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class SOLoginRegisterReqModel;
@class SOLoginRegisterRespModel;

@interface SOLoginCom : NSObject

- (void)requestSMSCode:(SOLoginRegisterReqModel *)reqModel completion:(void(^)(SOLoginRegisterRespModel * respModel))completion;

- (void)showSMSCodeView;

- (void)verifySMSCode:(SOLoginRegisterReqModel *)reqModel completion:(void(^)(SOLoginRegisterRespModel *respModel))completion;

- (void)loginSuccess;


@end

NS_ASSUME_NONNULL_END

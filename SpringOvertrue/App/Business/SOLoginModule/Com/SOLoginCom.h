//
//  SOLoginCom.h
//
//  Created by Sharker on 2021/7/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class SOLoginRegisterReqModel;
@class SOLoginRegisterRespModel;

@interface SOLoginCom : SOBaseCom
@property (nonatomic, copy) dispatch_block_t loginSuccessHandle;
@property (nonatomic, copy) dispatch_block_t logoutSuccessHandle;

- (void)requestSMSCode:(SOLoginRegisterReqModel *)reqModel completion:(void(^)(SOLoginRegisterRespModel * respModel))completion;

- (void)showSMSCodeView;

- (void)verifySMSCode:(SOLoginRegisterReqModel *)reqModel completion:(void(^)(SOLoginRegisterRespModel *respModel))completion;



@end

NS_ASSUME_NONNULL_END

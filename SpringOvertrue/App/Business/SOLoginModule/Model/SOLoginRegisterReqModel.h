//
//  SOLoginRegisterReqModel.h
//  SOLoginModule
//
//  Created by Sharker on 2021/7/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SOLoginRegisterReqModel : NSObject
@property (nonatomic, copy) NSString *phoneNum;
@property (nonatomic, copy) NSString *captcha;
@end

NS_ASSUME_NONNULL_END

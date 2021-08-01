//
//  SOUserModel.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, SOUserGender) {
    SOUserManGender = 1,
    SOUserWomanGender,
    SOUserUnknowGender,
    
};
@class SOAdressModel, SOUserEduModel, SOUserConstellation;
@interface SOUserModel : SOBaseModel
@property (nonatomic, strong) NSNumber *userId;
@property (nonatomic, copy) NSString *nickName;
@property (nonatomic, copy) NSString *uuid;
@property (nonatomic, copy) NSString *openId;
@property (nonatomic, copy) NSString *token;
@property (nonatomic, copy) NSString *phoneNum;
@property (nonatomic, copy) NSString *avatarUrl;
@property (nonatomic, strong) NSNumber *registerTime;
@property (nonatomic, assign) SOUserGender gender;
@property (nonatomic, strong) NSNumber *birthday;
@property (nonatomic, strong) SOAdressModel *address;
@property (nonatomic, copy) NSString *signature;
@property (nonatomic, strong) SOUserEduModel *userEducation;
@property (nonatomic, strong) SOUserConstellation *constellation;
@end

NS_ASSUME_NONNULL_END


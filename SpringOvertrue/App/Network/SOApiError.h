//
//  SOApiError.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

NS_ASSUME_NONNULL_BEGIN

@interface SOApiError : SOBaseModel
@property (nonatomic, copy, readonly) NSString *statusCode;
@property (nonatomic, copy, readonly) NSString *errorMessage;
@property (nonatomic, copy, readonly) NSString *userHint;
@property (nonatomic, assign, readonly) BOOL isNetworkError;
@property (nonatomic, copy, readonly) NSDictionary *userInfo;

+ (SOApiError *)errorWithCode:(NSString *)statusCode message:(NSString *)errorMessage userHint:(NSString *)userHint;

+ (SOApiError *)errorWithCode:(NSString *)statusCode message:(NSString *)errorMessage userHint:(NSString *)userHint userInfo:(NSDictionary * _Nullable )userInfo;


@end

NS_ASSUME_NONNULL_END
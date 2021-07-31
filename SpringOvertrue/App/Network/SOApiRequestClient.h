//
//  SOApiRequestClient.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class SOApiRequestConfig;
@class SOApiError;

typedef NS_ENUM(NSUInteger, SORequestType) {
    SORequestUnknowType = 0,
    SORequestUnGetType,
    SORequestUnPostType,
    SORequestUnPutType,
    SORequestUnDeleteType,
};

@interface SOApiRequestClient : NSObject

+ (NSURLSessionDataTask *)so_makeRequest:(void(^)(SOApiRequestConfig *config))configBlock
                             requestType:(SORequestType)type
                              completion:(void(^)(id _Nullable responseObject, SOApiError * _Nullable error))completion;
@end

NS_ASSUME_NONNULL_END

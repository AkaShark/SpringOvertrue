//
//  SOApiRequestClient.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import "SOApiRequestClient.h"
#import "SOApiRequestConfig.h"
#import "SONetworkMacro.h"
#import "SOApiError.h"

@implementation SOApiRequestClient

+ (NSURLSessionDataTask *)so_makeRequest:(void (^)(SOApiRequestConfig * _Nonnull))configBlock completion:(void (^)(id _Nullable, SOApiError * _Nonnull))completion {
    SOApiRequestConfig *config = [[SOApiRequestConfig alloc] init];
    [SOApiRequestClient setRequestConfigWith:config configBlock:configBlock];
    
    SOApiError *error = nil;
    if (config.url.length == 0 && config.route.length == 0) {
        // url error
        error = [SOApiError errorWithCode:kApiUrlError message:@"url错误" userHint:nil];
        !completion?:completion(nil, error);
    }
    
    ///TODO: 1. 基于AFN 完成请求的过程  2. 完成LaunchTask 3. 联调接口
    return [[NSURLSessionDataTask alloc] init];
}

+ (void)setRequestConfigWith:(SOApiRequestConfig *)config
                 configBlock:(void (^)(SOApiRequestConfig * _Nonnull))configBlock {
}

+ (void)handleRequesrError:(SOApiError *)error {
    
}

@end

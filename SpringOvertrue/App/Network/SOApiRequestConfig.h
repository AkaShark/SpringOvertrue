//
//  SOApiRequestConfig.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import <Foundation/Foundation.h>
#import "SOApiError.h"

NS_ASSUME_NONNULL_BEGIN

@interface SOApiRequestConfig : NSObject

@property (nonatomic, copy) NSString *route;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, strong) NSMutableDictionary *params;
@property (nonatomic, assign) SOApiErrorHintType hintType;
@property (nonatomic, strong) NSNumber *timeoutInterval;
@property (nonatomic, assign) BOOL waitsForConnectivity; /// 是否等待网络好了再去连接
@property (nonatomic, assign) BOOL timeoutIntervalForResource; /// 是否设置超时连接 与上面的属性搭配使用

@end

NS_ASSUME_NONNULL_END

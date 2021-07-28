//
//  SOApiRequestConfig.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, SOApiErrorHintType) {
    SOApiErrorHintNoneType = 0,
    SOApiErrorHintToastType,
    SOApiErrorHintAlertType,
};

@interface SOApiRequestConfig : NSObject

@property (nonatomic, copy) NSString *route;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, strong) NSMutableDictionary *params;
@property (nonatomic, assign) SOApiErrorHintType hintType;
@property (nonatomic, strong) NSNumber *timeoutInterval;

@end

NS_ASSUME_NONNULL_END

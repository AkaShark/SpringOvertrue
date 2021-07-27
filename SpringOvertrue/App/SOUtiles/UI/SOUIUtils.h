//
//  SOUIUtils.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/16.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SOUIUtils : NSObject
+ (CGFloat)topSafeInset;

+ (CGFloat)leftSafeInset;

+ (CGFloat)bottomSafeInset;

+ (CGFloat)rightSafeInset;

+ (CGRect)fillFrameWithSuperFrame:(CGRect)frame aspectRatio:(CGFloat)ratio;

+ (CGRect)fitFrameWithSuperFrame:(CGRect)frame aspectRatio:(CGFloat)ratio;

+ (CGFloat)statusBarHeight;


@end

NS_ASSUME_NONNULL_END

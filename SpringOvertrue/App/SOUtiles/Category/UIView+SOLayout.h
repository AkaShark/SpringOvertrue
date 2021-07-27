//
//  UIView+SOLayout.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SOLayout)
@property (nonatomic, copy) void(^layoutSubviewsBlock)(void);
@end

NS_ASSUME_NONNULL_END

//
//  SOUIUtils.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/16.
//

#import "SOUIUtils.h"

@implementation SOUIUtils

+ (CGFloat)topSafeInset {
    if (@available(iOS 11.0, *)) {
        CGFloat top = [UIApplication sharedApplication].keyWindow.safeAreaInsets.top;
        return top;
    } else {
        return [UIApplication sharedApplication].statusBarHidden?0:[UIApplication sharedApplication].statusBarFrame.size.height;
    }
}

+ (CGFloat)leftSafeInset {
    if (@available(iOS 11.0, *)) {
        return [UIApplication sharedApplication].keyWindow.safeAreaInsets.left;
    } else {
        return 0.f;
    }
}

+ (CGFloat)bottomSafeInset {
    if (@available(iOS 11.0, *)) {
        CGFloat bottom = [UIApplication sharedApplication].keyWindow.safeAreaInsets.bottom;
        return bottom;
    }
    return 0;
}

+ (CGFloat)rightSafeInset {
    if (@available(iOS 11.0, *)) {
        CGFloat right = [UIApplication sharedApplication].keyWindow.safeAreaInsets.right;
        return right;
    } else {
        return 0;
    }
}

+ (CGFloat)statusBarHeight {
    return [[UIApplication sharedApplication] statusBarFrame].size.height;
}

+ (CGRect)fillFrameWithSuperFrame:(CGRect)frame aspectRatio:(CGFloat)ratio {
    CGRect rect = CGRectZero;
    CGFloat width = CGRectGetWidth(frame);
    CGFloat height = CGRectGetHeight(frame);
    CGFloat originRatio = width / height;
    if (originRatio > ratio) { // 宽不动
        rect = CGRectMake(0, (height - width / ratio) / 2, width, width / ratio);
    } else { // 高不动
        rect = CGRectMake((width - height * ratio) / 2, 0, height * ratio, height);
    }
    return rect;
}

+ (CGRect)fitFrameWithSuperFrame:(CGRect)frame aspectRatio:(CGFloat)ratio {
    CGRect rect = CGRectZero;
    CGFloat width = CGRectGetWidth(frame);
    CGFloat height = CGRectGetHeight(frame);
    CGFloat superRatio = width / height;
    if (superRatio < ratio) {
        rect = CGRectMake(0, (height - width / ratio) / 2, width, width / ratio);
    } else {
        rect = CGRectMake((width - height * ratio) / 2, 0, height * ratio, height);
    }
    
    return rect;
}

@end

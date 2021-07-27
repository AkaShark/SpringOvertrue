//
//  UIView+SOLayout.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/16.
//

#import "UIView+SOLayout.h"
#import <objc/runtime.h>
static char kSOLayoutSubViewsBlockKey;

@implementation UIView (SOLayout)

+ (void)load {
    Method originMethod = class_getInstanceMethod(self.class, @selector(layoutSubviews));
    Method switchMethod = class_getInstanceMethod(self.class, @selector(so_layoutSubviews));
    method_exchangeImplementations(originMethod, switchMethod);
}

- (void)so_layoutSubviews {
    [self so_layoutSubviews]; // layoutSubviews
    self.layoutSubviewsBlock?:self.layoutSubviewsBlock();
}

#pragma mark - Accessors
- (void)setLayoutSubviewsBlock:(void (^)(void))layoutSubviewsBlock {
    objc_setAssociatedObject(self, &kSOLayoutSubViewsBlockKey, layoutSubviewsBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (void (^)(void))layoutSubviewsBlock {
    return objc_getAssociatedObject(self, &kSOLayoutSubViewsBlockKey);
}

@end

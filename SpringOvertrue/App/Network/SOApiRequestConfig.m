//
//  SOApiRequestConfig.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import "SOApiRequestConfig.h"

@implementation SOApiRequestConfig
- (instancetype)init {
    self = [super init];
    if (self) {
        _params = [NSMutableDictionary dictionary];
        [self configPublicParams];
    }
    return self;
}

- (void)configPublicParams {
    
}

@end

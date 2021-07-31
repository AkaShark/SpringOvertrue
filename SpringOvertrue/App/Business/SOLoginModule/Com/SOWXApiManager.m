//
//  SOWXApiManager.m
//
//  Created by Sharker on 2021/7/16.
//

#import "SOWXApiManager.h"
static SOWXApiManager *_manager = nil;
NSString *kWXLoginNotification = @"kWXLoginNotification";

@implementation SOWXApiManager

+ (instancetype)defaultManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[SOWXApiManager alloc] init];
    });
    return _manager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)setupWXSDKWithApp:(NSString *)app universalLink:(NSString *)universalLink {
    [WXApi registerApp:app universalLink:universalLink];
}

- (void)sendWXRequestWithType:(SOWXReqType)type scope:(NSString *)scopeCode state:(NSString *)requestState completion:(void (^)(BOOL))completion {
    BaseReq *request = nil;
    switch (type) {
        case SOWXReqLoginType: {
            SendAuthReq *authRequest = [[SendAuthReq alloc] init];
            authRequest.scope = scopeCode;
            authRequest.state = requestState;
            request = authRequest;
            break;
        }
            
        default:
            break;
    }
    
    [WXApi sendReq:request completion:^(BOOL success) {
        if (completion) {
            completion(success);
        }
    }];
}

- (BOOL)appWXInstalled {
    return [WXApi isWXAppInstalled];
}

+ (BOOL)handleOpenURL:(NSURL *)url delegate:(id<WXApiDelegate>)delegate {
    return [WXApi handleOpenURL:url delegate:delegate];
}

#pragma mark -WXDelegate
- (void)onResp:(BaseResp *)resp {
   // 接受到微信回调
    if ([resp isKindOfClass:[SendAuthResp class]]) {
        SendAuthResp *authResp = (SendAuthResp *)resp;
        NSString *code = authResp.code;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"" object:@{@"code":code}];
    }
    
}

- (void)onReq:(BaseReq *)req {
    // 请求微信回调 连接DeepLink
    
}



@end

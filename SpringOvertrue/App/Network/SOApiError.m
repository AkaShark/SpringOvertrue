//
//  SOApiError.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import "SOApiError.h"
@interface SOApiError ()
@property (nonatomic, copy) NSString *statusCode;
@property (nonatomic, copy) NSString *errorMessage;
@property (nonatomic, copy) NSString *userHint;
@property (nonatomic, assign) BOOL isNetworkError;
@property (nonatomic, copy) NSDictionary *userInfo;
@end

@implementation SOApiError

+ (SOApiError *)errorWithCode:(NSString *)statusCode message:(NSString *)errorMessage userHint:(NSString *)userHint {
    return [SOApiError errorWithCode:statusCode message:errorMessage userHint:userHint userInfo:nil];
}

+ (SOApiError *)errorWithCode:(NSString *)statusCode message:(NSString *)errorMessage userHint:(NSString *)userHint userInfo:(NSDictionary *)userInfo {
    SOApiError *error = [[SOApiError alloc] init];
    error.statusCode = statusCode;
    error.errorMessage = errorMessage;
    error.userHint = userHint;
    error.userInfo = userInfo;
    return error;
}

- (NSString *)userHint {
    if (!_userHint) {
        return _errorMessage;
    }
    return _userHint;
}
- (BOOL)isNetworkError {
    if ([self isNum:self.statusCode]) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isNum:(NSString *)checkedNumString {
    if (checkedNumString.length == 0) {
        return NO;
    }
    NSString *regex = @"^[-\\+]?([0-9]+\\.?)?[0-9]+$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    if ([pred evaluateWithObject:checkedNumString]) {
        return YES;
    }
    return NO;
}

@end

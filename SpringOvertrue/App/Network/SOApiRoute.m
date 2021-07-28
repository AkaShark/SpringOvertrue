//
//  SOApiRoute.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#import "SOApiRoute.h"
#import "SONetworkMacro.h"

@implementation SOApiRoute

// 根据传进来route切换domain
+ (NSString *)urlWithRoute:(NSString *)route {
//    NSString *domain =
    return [NSString stringWithFormat:@"%@%@", kDevelopURL, route];
}
@end

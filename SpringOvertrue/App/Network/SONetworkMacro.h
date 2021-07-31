//
//  SONetworkMacro.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/28.
//

#ifndef SONetworkMacro_h
#define SONetworkMacro_h

#pragma mark - head file
#import "SOApiRequestClient.h"


#pragma mark - Api


#pragma mark - local params

#define kReleaseURL @"https://www.coachview.cn/coachAI-backend/v2"
#define kDevelopURL @"http://139.186.158.245:10708/spring-overture"
// 根据条件取Url
#ifdef DEBUG
#define kUrl kDevelopURL
#else
#define kUrl kReleaseURL
#endif


#pragma mark - ApiError

#define kApiUrlError @"10000"
#define kApiDataFormat @"10001"

#endif /* SONetworkMacro_h */

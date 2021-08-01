//
//  SOUserConstellation.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SOUserConstellation : SOBaseModel
@property (nonatomic, strong) NSNumber *constellationId;
@property (nonatomic, copy) NSString *constellationName;
@end

NS_ASSUME_NONNULL_END

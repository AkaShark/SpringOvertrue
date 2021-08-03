//
//  SOMutualInfo.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/8/3.
//


NS_ASSUME_NONNULL_BEGIN

@interface SOMutualInfo : SOBaseModel
@property (nonatomic, strong) NSNumber *distance;
@property (nonatomic, assign) BOOL followed;
@property (nonatomic, assign) BOOL isFans;
@end

NS_ASSUME_NONNULL_END

//
//  SOAdressModel.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SOCityModel <NSObject>
@end

@interface SOCityModel : SOBaseModel
@property (nonatomic, strong) NSNumber *cityId;
@property (nonatomic, copy) NSString *cityName;
@end

@interface SOProvinceModel : SOBaseModel
@property (nonatomic, strong) NSNumber *provinceId;
@property (nonatomic, copy) NSString *provinceName;
@property (nonatomic, copy) NSArray<SOCityModel> *cityList;
@end

@interface SOAdressModel : SOBaseModel
@property (nonatomic, strong) SOProvinceModel *province;
@property (nonatomic, strong) SOCityModel *city;
@end


NS_ASSUME_NONNULL_END

//
//  SOUserEduModel.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class SOAdressModel;
@interface SOSchoolModel : SOBaseModel
@property (nonatomic, strong) NSNumber *schoolId;
@property (nonatomic, copy) NSString *schoolName;
@property (nonatomic, strong) SOAdressModel *address;
@end

@interface SOCollegeModel : SOBaseModel
@property (nonatomic, strong) NSNumber *collegeId;
@property (nonatomic, copy) NSString *collegeName;
@end

@interface SOSpecialtyModel : SOBaseModel
@property (nonatomic, strong) NSNumber *specialtyId;
@property (nonatomic, copy) NSString *specialtyName;
@end

@interface SOUserEduModel : SOBaseModel
@property (nonatomic, strong) SOSchoolModel *school;
@property (nonatomic, strong) SOCollegeModel *college;
@property (nonatomic, strong) SOSpecialtyModel *specialty;
@property (nonatomic, strong) NSNumber *startYear;
@property (nonatomic, strong) NSNumber *educationLevel;
@property (nonatomic, assign) BOOL approve;

@end

NS_ASSUME_NONNULL_END

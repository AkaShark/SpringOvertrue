//
//  LaunchTask.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, SOLaunchTaskPriority) {
    SOLaunchTaskPriorityVeryLow = 0,
    SOLaunchTaskPriorityLow,
    SOLaunchTaskPriorityNormal, // default
    SOLaunchTaskPriorityHigh,
    SOLaunchTaskPriorityVeryHigh
};

@interface LaunchTask : NSObject
@property (nonatomic, assign) BOOL removeAfterFinish;
- (NSString *)taskName;
- (SOLaunchTaskPriority)taskProiority;
- (void)run;

@end

NS_ASSUME_NONNULL_END

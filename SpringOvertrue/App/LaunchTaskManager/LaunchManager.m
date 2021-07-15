//
//  LaunchManager.m
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/15.
//

#import "LaunchManager.h"
#import "LaunchTask.h"
static LaunchManager *_managerInstance = nil;

@interface LaunchManager()
@property (nonatomic, strong) NSMutableArray<LaunchTask *> *taskArray;
@end

@implementation LaunchManager

+ (instancetype)defaultManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _managerInstance = [[LaunchManager alloc] init];
    });
    return _managerInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _taskArray = [[NSMutableArray alloc] init];
    }
    return self;
}
// 执行所有任务
- (void)runLaunchTasks {
    
}

- (void)addTask:(LaunchTask *)task {
    [self.taskArray addObject:task];
}

- (void)removeTask:(LaunchTask *)task {
    [self.taskArray removeObject:task];
}

@end

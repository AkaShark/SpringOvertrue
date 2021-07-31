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
        [self registerTask];
    }
    return self;
}

- (void)registerTask {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SOLaunchTaskRegisterTable" ofType:@"plist"];
    NSArray *launchTasks = [NSArray arrayWithContentsOfFile:filePath];
    for (NSString *className in launchTasks) {
        Class cls = NSClassFromString(className);
        LaunchTask *task = [[cls alloc] init];
        [self.taskArray addObject:task];
    }
    
}

// 执行所有任务
- (void)runLaunchTasks {
    [self.taskArray sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        NSComparisonResult result;
        LaunchTask *task1 = obj1;
        LaunchTask *task2 = obj2;
        NSUInteger pri1 = [task1 taskProiority];
        NSUInteger pri2 = [task2 taskProiority];
        if (pri1 == pri2) {
            result = NSOrderedSame;
        } else if (pri1 < pri2) {
            result = NSOrderedAscending;
        } else {
            result = NSOrderedDescending;
        }
        return result;
    }];
    
    NSMutableArray *removeAfterRunTasks = [NSMutableArray arrayWithCapacity:self.taskArray.count];
    for (LaunchTask *task in self.taskArray) {
        [task run];
        if (task.removeAfterFinish) {
            [removeAfterRunTasks addObject:task];
        }
    }
    if (removeAfterRunTasks.count > 0) {
        for (LaunchTask *task in removeAfterRunTasks) {
            [self.taskArray removeObject:task];
        }
    }
}

- (void)addTask:(LaunchTask *)task {
    [self.taskArray addObject:task];
}

- (void)removeTask:(LaunchTask *)task {
    [self.taskArray removeObject:task];
}

@end

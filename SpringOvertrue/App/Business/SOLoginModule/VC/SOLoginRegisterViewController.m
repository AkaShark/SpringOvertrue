//
//  SOLoginRegisterViewController.m
//  AFNetworking
//
//  Created by Sharker on 2021/7/18.
//

#import "SOLoginRegisterViewController.h"
#import "SOLoginCom.h"

@interface SOLoginRegisterViewController ()
@property (nonatomic, strong) SOLoginCom *operationCom;
@end

@implementation SOLoginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configOperationCom];
    [self requestContentData];
}

- (void)configOperationCom {
    [super configOperationCom];
    self.operationCom = [[SOLoginCom alloc] init];

}

- (void)requestContentData {
    [super requestContentData];
//    [self.operationCom requestSMSCodeWithPhoneNum:@"18732337243" completion:^(SOLoginRegisterRespModel * _Nonnull respModel) {
//        NSLog(@"%@", respModel);
//    }];
    
//    [self.operationCom verifySMSCodePhoneNum:@"18732337243" SMSCode:@"tanghao" completion:^(SOLoginRegisterRespModel * _Nonnull respModel) {
//        NSLog(@"%@", respModel);
//    }];
    
}

#pragma mark - Accessor




@end

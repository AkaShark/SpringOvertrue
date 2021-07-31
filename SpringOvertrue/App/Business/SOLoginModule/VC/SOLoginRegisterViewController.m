//
//  SOLoginRegisterViewController.m
//  AFNetworking
//
//  Created by Sharker on 2021/7/18.
//

#import "SOLoginRegisterViewController.h"
#import "SOLoginCom.h"
@interface SOLoginRegisterViewController ()

@end

@implementation SOLoginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)configOperationCom {
    [super configOperationCom];
    self.operationCom = [[SOLoginCom alloc] init];

}

- (void)requestContentData {
    [super requestContentData];
    
    
}


@end

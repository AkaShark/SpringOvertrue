//
//  SOBaseViewController.h
//  SpringOvertrue
//
//  Created by Sharker on 2021/7/31.
//

#import <UIKit/UIKit.h>
#import "SOBaseCom.h"

NS_ASSUME_NONNULL_BEGIN

@interface SOBaseViewController : UIViewController
@property (nonatomic, strong) SOBaseCom *operationCom;
- (void)configOperationCom;
- (void)requestContentData;
- (void)setupContentUI;

@end

NS_ASSUME_NONNULL_END

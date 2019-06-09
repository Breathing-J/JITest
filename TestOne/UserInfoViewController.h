//
//  UserInfoViewController.h
//  TestOne
//
//  Created by ji on 2019/6/9.
//  Copyright © 2019年 ji. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserInfoViewController : UIViewController
@property (nonatomic,strong)NSString *userName;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@end

NS_ASSUME_NONNULL_END

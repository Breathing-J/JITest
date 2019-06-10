//
//  ViewController.m
//  TestOne
//
//  Created by ji on 2019/5/28.
//  Copyright © 2019年 ji. All rights reserved.
//

#import "ViewController.h"
#import <CommonCrypto/CommonDigest.h>
#import "NetWorking/NetManager.h"
#import "UserInfoViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"用户登入地址:%@",USERLOGINBASE_URL);
    NSLog(@"%@",self.userNameTextField.text);
    NSLog(@"%@",self.userPasswordTextField.text);
    
    [NetManager getSmileWithSort:@"1" andWithTime:@"2" completionHandler:^(SmileModel * _Nonnull model, NSError * _Nonnull error) {
        if (model.error_code == 0) {
            NSLog(@"请求成功");
        }
    } failure:^(NSError * _Nonnull error) {
        
    }];
}
- (IBAction)clickLoginButton:(UIButton *)sender {
    [NetManager userLoginWithUserID:self.userNameTextField.text andUserPassword:[self encryptStringWithMD5:self.userPasswordTextField.text] completionHandler:^(UserModel * _Nonnull model, NSError * _Nonnull error) {
        if (model.Status == 1) {
            NSLog(@"%@",model.Entity.USERNAME);
            UserInfoViewController *vc = [[UserInfoViewController alloc] init];
            vc.userName = model.Entity.USERNAME;
            [self presentViewController:vc animated:YES completion:nil];
        }
    } failure:^(NSError * _Nonnull error) {
        
    }];
}
#pragma mark -- MD5加密
-(NSString *)encryptStringWithMD5:(NSString *)inputStr{
    
    const char *newStr = [inputStr UTF8String];
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(newStr,(unsigned int)strlen(newStr),result);
    
    NSMutableString *outStr = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    
    for(int i = 0;i<CC_MD5_DIGEST_LENGTH;i++){
        
        [outStr appendFormat:@"%02x",result[i]];//注意：这边如果是x则输出32位小写加密字符串，如果是X则输出32位大写字符串
    }
    
    return outStr;
    
}

@end

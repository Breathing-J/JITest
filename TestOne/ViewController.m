//
//  ViewController.m
//  TestOne
//
//  Created by ji on 2019/5/28.
//  Copyright © 2019年 ji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"用户登入地址:%@",USERLOGINBASE_URL);
}
- (IBAction)clickLoginButton:(UIButton *)sender {
    
}


@end

//
//  NetManager.m
//  TestOne
//
//  Created by ji on 2019/6/9.
//  Copyright © 2019年 ji. All rights reserved.
//

#import "NetManager.h"
#import "YYModel.h"
@implementation NetManager
+(void)userLoginWithUserID:(NSString *)userID andUserPassword:(NSString *)userPassword completionHandler:(void (^)(UserModel * _Nonnull, NSError * _Nonnull))completionHandler failure:(void (^)(NSError * _Nonnull))failure{
    NSDictionary *dict = @{
                           @"USERNAME":userID,
                           @"PASSWORD":userPassword,
                           @"APPTYPE":@"11111"
                           };
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //NSLog(@"用户登入的参数:%@",dict);
    // 设置超时时间
    [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer.timeoutInterval = 30.f;
    [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    //请求数据的类型
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    //    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:USERLOGINBASE_URL parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandler([UserModel yy_modelWithJSON:responseObject],nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //NSLog(@"登入请求失败");
    }];
}
@end

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

+ (void)getSmileWithSort:(NSString *)sort andWithTime:(NSString *)time completionHandler:(void (^)(SmileModel * _Nonnull, NSError * _Nonnull))completionHandler failure:(void (^)(NSError * _Nonnull))failure{
    NSDictionary *dict = @{
                           @"sort":@"desc",
                           @"page":@1,
                           @"pagesize":@"5",
                           @"time":@1418816972,
                           @"key":@"7ef8c865869201d8894b3bb6de2c3d3e"
                           };
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //NSLog(@"用户登入的参数:%@",dict);
    // 设置超时时间
    [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer.timeoutInterval = 30.f;
    [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    //请求数据的类型
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:@"http://v.juhe.cn/joke/content/list.php" parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandler([SmileModel yy_modelWithJSON:responseObject],nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //NSLog(@"登入请求失败");
    }];
}

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

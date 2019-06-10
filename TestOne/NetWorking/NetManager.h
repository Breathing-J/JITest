//
//  NetManager.h
//  TestOne
//
//  Created by ji on 2019/6/9.
//  Copyright © 2019年 ji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "UserModel.h"
#import "SmileModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface NetManager : NSObject
/** 用户登入 */
+(void)userLoginWithUserID:(NSString*)userID andUserPassword:(NSString*)userPassword completionHandler:(void(^)(UserModel *model,NSError *error))completionHandler failure:(void(^)(NSError *error))failure;
/** 获取笑话 */
+(void)getSmileWithSort:(NSString*)sort andWithTime:(NSString*)time completionHandler:(void(^)(SmileModel *model,NSError *error))completionHandler failure:(void(^)(NSError *error))failure;
@end


NS_ASSUME_NONNULL_END

//
//  SmileModel.h
//  TestOne
//
//  Created by ji on 2019/6/10.
//  Copyright © 2019年 ji. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Result,Smile;
@interface SmileModel : NSObject
@property (nonatomic, copy) NSString *reason;

@property (nonatomic, assign) NSInteger error_code;

@property (nonatomic, strong) Result *result;

@end

@interface Result : NSObject

@property (nonatomic, strong) NSArray<Smile *> *data;

@end

@interface Smile : NSObject

@property (nonatomic, copy) NSString *content;

@property (nonatomic, copy) NSString *hashId;

@property (nonatomic, assign) NSInteger unixtime;

@property (nonatomic, copy) NSString *updatetime;

@end

NS_ASSUME_NONNULL_END

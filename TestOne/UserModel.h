//
//  UserModel.h
//  TestOne
//
//  Created by ji on 2019/6/9.
//  Copyright © 2019年 ji. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Formatjson,Entity;
@interface UserModel : NSObject
@property (nonatomic, copy) NSString *Message;

@property (nonatomic, assign) NSInteger Status;

@property (nonatomic, strong) Entity *Entity;

@property (nonatomic, copy) NSString *RID;
@end
@interface Entity : NSObject

@property (nonatomic, copy) NSString *SUPERIOR_USERID;

@property (nonatomic, copy) NSString *REMARK;

@property (nonatomic, copy) NSString *PASSWORD;

@property (nonatomic, copy) NSString *USERTEL;

@property (nonatomic, copy) NSString *USERNAME;

@property (nonatomic, copy) NSString *CREATEDATE;

@property (nonatomic, copy) NSString *ROLEID;

@property (nonatomic, copy) NSString *ROLENAME;

@property (nonatomic, assign) NSInteger UESRSOURCE;

@property (nonatomic, copy) NSString *USERID;

@property (nonatomic, copy) NSString *LINKNAME;

@property (nonatomic, assign) NSInteger FORBIDDEN;

@property (nonatomic, copy) NSString *SERVER;

@property (nonatomic, copy) NSString *PORT;

@property (nonatomic, copy) NSString *USERTYPECODE;

@property (nonatomic, copy) NSString *NICKNAME;

@property (nonatomic, copy) NSString *ICONURL;
@end


NS_ASSUME_NONNULL_END

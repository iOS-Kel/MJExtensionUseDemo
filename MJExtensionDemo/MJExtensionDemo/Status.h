//
//  Status.h
//  MJExtensionDemo
//
//  Created by GFK on 16/12/15.
//  Copyright © 2016年 GFK. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "User.h"

@class User;
@interface Status : NSObject
/** 微博文本内容 */
@property (copy, nonatomic) NSString *text;
/** 微博作者 */
@property (strong, nonatomic) User *user;
/** 转发的微博 */
@property (strong, nonatomic) Status *retweetedStatus;
@end

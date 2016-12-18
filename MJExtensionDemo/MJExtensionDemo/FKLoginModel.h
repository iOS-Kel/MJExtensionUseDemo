//
//  FKLoginModel.h
//  YiShiDai
//
//  Created by GFK on 16/11/7.
//  Copyright © 2016年 GFK. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FKGameModel;
@class FKMedalsModel;
@class FKOnbarStatusModel;
@class FKJobStatusModel;
@class FKClanStatusModel;
@interface FKLoginModel : NSObject
/** 用户id */
@property(nonatomic, copy) NSString *uid;
/** 用户昵称 */
@property(nonatomic, copy) NSString *nickname;
/** 用户真实姓名 */
@property(nonatomic, copy) NSString *truename;
/** 身份证号码 */
@property(nonatomic, copy) NSString *idcard;
/** 性别(0：女 1：男) */
@property(nonatomic, assign) NSUInteger sexual;
/** 生日 */
@property(nonatomic, copy) NSString *birthday;
/** 用户头像 */
@property(nonatomic, copy) NSString *avatar;
/** 用户手机号 */
@property(nonatomic, copy) NSString *mobile;
/** 用户地址 */
@property(nonatomic, copy) NSString *address;
/** 宜博币余额 */
@property(nonatomic, assign) double ebmoney;
/** 钻石余额 */
@property(nonatomic, assign) double diamond;
 /** 鲜花余额 */
@property(nonatomic, assign) double *flowers;
/** vip等级 */
@property(nonatomic, assign) NSUInteger viplevel;
/** 关注数 */
@property(nonatomic, assign) NSUInteger follow;
/** 粉丝数 */
@property(nonatomic, assign) NSUInteger followers;
/** 未读消息数 */
@property(nonatomic, assign) NSUInteger newMessagesNum;

/** 游戏 */
@property(nonatomic, strong) FKGameModel *main_game;

/** 奖牌 */
@property(nonatomic, strong) NSMutableArray <FKMedalsModel *>*medals;

/** 上机状态 */
@property(nonatomic, strong) FKOnbarStatusModel *onbarstatus;

/** 工作状态模型 */
@property(nonatomic, strong) FKJobStatusModel *JobStatus;

/** 战队状态 */
@property(nonatomic, strong) FKClanStatusModel *clanStatus;

@end


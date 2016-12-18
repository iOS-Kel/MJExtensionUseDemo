//
//  ViewController.m
//  MJExtensionDemo
//
//  Created by GFK on 16/12/15.
//  Copyright © 2016年 GFK. All rights reserved.
//

#import "ViewController.h"
#import <MJExtension/MJExtension.h>
//#import "Foundation+Log.m"

// 第一中复杂json转模型的模型类头文件
#import "Status.h"
#import "User.h"

// 第二种复杂json转模型的模型类头文件
#import "FKLoginModel.h"
#import "FKGameModel.h"
#import "FKMedalsModel.h"
#import "FKOnbarStatusModel.h"
#import "FKJobStatusModel.h"
#import "FKClanStatusModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 第一种复杂json数据转模型
    /*
    NSDictionary *dict = @{
                           @"text" : @"是啊，今天天气确实不错！",
                           @"user" : @{
                                   @"name" : @"Jack",
                                   @"icon" : @"lufy.png"
                                   },
                           @"retweetedStatus" : @{
                                   @"text" : @"今天天气真不错！",
                                   @"user" : @{
                                           @"name" : @"Rose",
                                           @"icon" : @"nami.png"
                                           }
                                   }
                           };
     
    NSLog(@"dict = %@", dict);
     Status *status = [Status mj_objectWithKeyValues:dict];
    
     NSString *text = status.text;
     NSString *name = status.user.name;
     NSString *icon = status.user.icon;
     NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
     // text=是啊，今天天气确实不错！, name=Jack, icon=lufy.png
     
     NSString *text2 = status.retweetedStatus.text;
     NSString *name2 = status.retweetedStatus.user.name;
     NSString *icon2 = status.retweetedStatus.user.icon;
     NSLog(@"text2=%@, name2=%@, icon2=%@", text2, name2, icon2);
     // text2=今天天气真不错！, name2=Rose, icon2=nami.png
     */
     
    
    
    // 第二种复杂json转模型
    
    NSDictionary *dict = @{
                           @"success": @0,// 0:登录失败 1:登录成功
                           @"message": @"登录成功",
                           @"data": @{
                                   @"uid": @"001",
                                   @"nickname": @"host",
                                   @"truename": @"张三",
                                   @"idcard": @"430624188902107751",
                                   @"sexual": @1,
                                   @"birthday": @"2015-10-10",
                                   @"avatar": @"http://p.3761.com/pic/10271413505893.jpg",
                                   @"mobile": @"13430465533",
                                   @"address": @"广东省深圳市南山区",
                                   @"ebmoney": @100,
                                   @"diamond": @100,
                                   @"flowers": @100,
                                   @"viplevel": @0,
                                   @"follow": @0,
                                   @"followers": @0,
                                   @"newMessagesNum": @0,
                                   @"main_game": @{
                                           @"name": @"穿越火线",
                                           @"logo": @"http://img0.pcgames.com.cn/pcgames/1202/06/2439576_cf_logo.jpg",
                                           @"gameId": @"001"
                                           },
                                   @"medals": @[
                                           @{
                                               @"name": @"大神",
                                               @"logo": @"http://www.nsnweb.com/img/icon_ds.png"
                                               },
                                           @{
                                               @"name": @"女神",
                                               @"logo": @"http://www.nsnweb.com/img/icon_ds.png"
                                               },
                                           @{
                                               @"name": @"大仙",
                                               @"logo": @"http://www.nsnweb.com/img/icon_nvs.png"
                                               }
                                           ],
                                   @"onbar_status": @{
                                           @"status": @"1",
                                           @"barId": @"001",
                                           @"seatId": @"65"
                                           },
                                   @"JobStatus": @{
                                           @"JobDone": @0,
                                           @"serveRate": @0
                                           },
                                   @"clanStatus": @{
                                           @"clan_id": @0,
                                           @"clan_name": @"",
                                           @"clan_logo": @""
                                           }
                                   }
                           };
    NSLog(@"dict = %@", dict);
    
    FKLoginModel *loginModel = [FKLoginModel mj_objectWithKeyValues:dict[@"data"]];
    NSLog(@"张三:%@", loginModel.truename);
    //2016-12-16 00:07:38.187 MJExtensionDemo[80614:8545394] 张三:张三
    NSLog(@"广东省深圳市南山区:%@", loginModel.address);
    //2016-12-16 00:07:38.187 MJExtensionDemo[80614:8545394] 广东省深圳市南山区:广东省深圳市南山区
    NSLog(@"穿越火线:%@", loginModel.main_game.name);
    //2016-12-16 00:10:01.792 MJExtensionDemo[80647:8550560] 穿越火线:穿越火线
    NSLog(@"大神:%@", loginModel.medals[0].name);
    // 2016-12-16 00:10:01.792 MJExtensionDemo[80647:8550560] 大神:大神
    NSLog(@"==========================================\n如果打印的内容,冒号左边和右边一模一样,说明复杂字典转模型成功");
}




@end

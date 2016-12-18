//
//  FKGameModel.h
//  YiShiDai
//
//  Created by GFK on 16/12/15.
//  Copyright © 2016年 GFK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKGameModel : NSObject
/** 游戏名称 */
@property(nonatomic, copy) NSString *name;
/** 游戏logo */
@property(nonatomic, copy) NSString *logo;
/** 游戏id */
@property(nonatomic, copy) NSString *gameId;
@end

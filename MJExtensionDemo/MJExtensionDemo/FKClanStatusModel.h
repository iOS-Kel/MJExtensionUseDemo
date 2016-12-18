//
//  FKClanStatusModel.h
//  YiShiDai
//
//  Created by GFK on 16/12/15.
//  Copyright © 2016年 GFK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKClanStatusModel : NSObject
/** 战队id */
@property(nonatomic, assign) NSUInteger clan_id;
/** 战队名称 */
@property(nonatomic, copy) NSString *clan_name;
/** 战队logo */
@property(nonatomic, copy) NSString *clan_logo;
@end

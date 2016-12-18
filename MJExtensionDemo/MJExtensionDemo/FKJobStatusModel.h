//
//  FKJobStatusModel.h
//  YiShiDai
//
//  Created by GFK on 16/12/15.
//  Copyright © 2016年 GFK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKJobStatusModel : NSObject
/** 接单次数 */
@property(nonatomic, assign) NSUInteger JobDone;
/** 陪玩费率 */
@property(nonatomic, assign) NSUInteger serveRate;
@end

//
//  FKOnbarStatusModel.h
//  YiShiDai
//
//  Created by GFK on 16/12/15.
//  Copyright © 2016年 GFK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKOnbarStatusModel : NSObject
/** 上机状态 */
@property(nonatomic, copy) NSString *status;
/** 电竞馆ID */
@property(nonatomic, copy) NSString *barId;
/** 座位ID */
@property(nonatomic, copy) NSString *seatId;


@end

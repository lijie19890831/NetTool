//
//  NetClientManager.h
//  netToolTest
//
//  Created by ios on 16/12/8.
//  Copyright © 2016年 langzhijia. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface NetClientManager : AFHTTPSessionManager
+ (NetClientManager *)sharedManager;
@end

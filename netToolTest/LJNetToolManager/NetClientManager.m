//
//  NetClientManager.m
//  netToolTest
//
//  Created by ios on 16/12/8.
//  Copyright © 2016年 langzhijia. All rights reserved.
//

#import "NetClientManager.h"

@implementation NetClientManager
+ (NetClientManager *)sharedManager
{
    static NetClientManager *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[NetClientManager alloc]initWithBaseURL:[NSURL URLWithString:@""]];
        
         _instance.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        
        _instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain",@"text/json", @"text/javascript",@"text/html", nil];
        _instance.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    
    return _instance;
}
@end

//
//  NetManagerTool.m
//  netToolTest
//
//  Created by ios on 16/12/8.
//  Copyright © 2016年 langzhijia. All rights reserved.
//

#import "NetManagerTool.h"
#import "NetClientManager.h"
@implementation NetManagerTool
+ (NSURLSessionDataTask *)getNetToolWithUrl:(NSString *)url Pra:(NSDictionary *)pra  success:(void(^)(id response))success error:(void(^)(id Error))Error
{
    
    NetClientManager *resquest1 = [NetClientManager sharedManager];
    //resquest1.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    
   return  [resquest1 GET:url parameters:pra progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        Error(error);
    }];
}
@end

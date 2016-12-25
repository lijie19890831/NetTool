//
//  NetManagerTool.h
//  netToolTest
//
//  Created by ios on 16/12/8.
//  Copyright © 2016年 langzhijia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetManagerTool : NSObject
+ (NSURLSessionDataTask *)getNetToolWithUrl:(NSString *)url Pra:(NSDictionary *)pra  success:(void(^)(id response))success error:(void(^)(id Error))Error;
@end

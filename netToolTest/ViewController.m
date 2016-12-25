//
//  ViewController.m
//  netToolTest
//
//  Created by ios on 16/12/7.
//  Copyright © 2016年 langzhijia. All rights reserved.
//

#import "ViewController.h"
#import "NetClientManager.h"
#import "NetManagerTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*[LJNetRequestMethod getWithUrl:@"http://http://www.paobanglang.com/App/Android/Deliver/GetCityList.aspx" refreshCache:YES params:nil success:^(id responseObject) {
        NSLog(@"%@",responseObject);
    } fail:^(NSError *error) {
        NSLog(@"%@",error);
        
    }];*/
    
    //设置缓存
    NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:44 * 11024 * 1024 diskCapacity:220 * 11024 * 1024 diskPath:nil];
    [NSURLCache setSharedURLCache:URLCache];
    
    float a = 13.456;
    float b = 0.3;
    float c= 1.11;
    NSLog(@"1转换后的结果为%0.2f",a);
    NSLog(@"2转换后的结果为%0.2f",b*c);
    
    [NetManagerTool getNetToolWithUrl:@"http://www.paobanglang.com/App/Android/Deliver/GetCityList.aspx" Pra:nil success:^(id response) {
        NSLog(@"%@",response);
    } error:^(id Error) {
        NSLog(@"%@",Error);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

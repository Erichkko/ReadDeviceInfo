//
//  ViewController.m
//  ReadDeviceInfo
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "ViewController.h"

#import "UIDevice+Hardware.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
//1.获取手机型号
NSString *platform =  [[UIDevice  currentDevice] platformString];
    NSLog(@"当前手机型号是%@",platform);
    
    
//2.获取剩余空间 和 一共多少空间
    NSNumber *freeDiskSpace = [[UIDevice currentDevice] freeDiskSpace];
    NSNumber *toatlDiskSpace = [[UIDevice currentDevice] totalDiskSpace];
    
    NSLog(@"剩余空间:%@ -- 总存储空间:%@",freeDiskSpace,toatlDiskSpace);
}

@end

//
//  ViewController.m
//  runtime2
//
//  Created by zengqiang xing on 2018/6/5.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//  利用 runtime 动态添加方法来处理一个未实现的方法

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p=[[Person alloc] init];
    
    [p performSelector:@selector(run:) withObject:@10];
    
   
}



@end

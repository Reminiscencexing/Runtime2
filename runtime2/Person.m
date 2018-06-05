//
//  Person.m
//  runtime2
//
//  Created by zengqiang xing on 2018/6/5.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person
void runAddMethod(id self,SEL _cmd,NSNumber *number)
{
    NSLog(@"跑了%@米",number);
    
}


+(BOOL)resolveInstanceMethod:(SEL)sel
{
    // 给本类动态添加一个方法
    if(sel==NSSelectorFromString(@"run:"))
    {
        // 动态添加run方法
        class_addMethod(self, sel, (IMP)runAddMethod, "v@:@");
        return YES;

    }
    return [super resolveInstanceMethod:sel];
    
}

/**
    <#__unsafe_unretained Class cls#>: 给那个类添加方法
    <#SEL name#>:添加那个方法，即添加方法的方法编号
    <#IMP imp#>:方法实现-》函数-》函数入口-》函数名
    <#const char *types#>:方法类型
    class_addMethod(<#__unsafe_unretained Class cls#>, <#SEL name#>, <#IMP imp#>, <#const char *types#>)
 
 */

@end

//
//  UITouch+Category.m
//  LYTouchDemo
//
//  Created by admin on 2019/4/25.
//  Copyright © 2019 ly. All rights reserved.
//

#import "UITouch+Category.h"
#import <objc/runtime.h>
#import "LYShareInstance.h"

@implementation UITouch (Category)

+ (void)load {
    Method originalMethod = class_getInstanceMethod([self class], @selector(dealloc));
    Method newMethod = class_getInstanceMethod([self class], @selector(ly_dealloc));
    method_exchangeImplementations(originalMethod, newMethod);
}

- (void)ly_dealloc {
    NSDate *deallocDate = [NSDate date];
    NSDate *touchEndDate = [LYShareInstance sharedInstance].touchEndDate;
    NSTimeInterval during = [deallocDate timeIntervalSinceDate:touchEndDate];
    NSLog(@"dealloc during:%@", @(during));
    
    [self ly_dealloc];
}

@end

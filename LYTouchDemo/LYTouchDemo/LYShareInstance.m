//
//  LYShareInstance.m
//  LYTouchDemo
//
//  Created by admin on 2019/4/25.
//  Copyright © 2019 ly. All rights reserved.
//

#import "LYShareInstance.h"

@implementation LYShareInstance

+ (instancetype)sharedInstance {
    static LYShareInstance *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LYShareInstance alloc] init];
    });
    
    return sharedInstance;
}

@end

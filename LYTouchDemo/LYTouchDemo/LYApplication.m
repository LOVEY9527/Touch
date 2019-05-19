//
//  LYApplication.m
//  LYTouchDemo
//
//  Created by admin on 2019/5/18.
//  Copyright © 2019 ly. All rights reserved.
//

#import "LYApplication.h"

@implementation LYApplication

- (void)sendEvent:(UIEvent *)event{
    NSLog(@"application sendEvent");
    [super sendEvent:event];
}

@end

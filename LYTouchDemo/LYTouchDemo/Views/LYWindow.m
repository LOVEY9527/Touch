//
//  LYWindow.m
//  LYTouchDemo
//
//  Created by admin on 2019/4/29.
//  Copyright © 2019 ly. All rights reserved.
//

#import "LYWindow.h"

@implementation LYWindow

- (void)sendEvent:(UIEvent *)event {
    NSLog(@"sendEvent");
    [super sendEvent:event];
}

@end

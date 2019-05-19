//
//  LYWindow.m
//  LYTouchDemo
//
//  Created by admin on 2019/4/29.
//  Copyright © 2019 ly. All rights reserved.
//

#import "LYWindow.h"

@implementation LYWindow

- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event{
    NSLog(@"%@ hitTest:%@", NSStringFromClass([self class]), NSStringFromCGPoint(point));
    return [super hitTest:point withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"%@ pointInside:%@", NSStringFromClass([self class]), NSStringFromCGPoint(point));
    return [super pointInside:point withEvent:event];
}

- (void)sendEvent:(UIEvent *)event {
//    NSLog(@"sendEvent");
    [super sendEvent:event];
}

@end

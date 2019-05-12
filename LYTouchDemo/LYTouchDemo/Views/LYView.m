//
//  LYView.m
//  LYTouchDemo
//
//  Created by admin on 2019/4/29.
//  Copyright © 2019 ly. All rights reserved.
//

#import "LYView.h"

@implementation LYView

//- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event{
//    if (!self.userInteractionEnabled ||
//        !self.hidden ||
//        self.alpha <= 0.01 ||
//        ![self pointInside:point withEvent:event]) {
//        //当前视图无法响应事件
//        return nil;
//    }
//
//    __block UIView *fitView = self;
//    __weak typeof(self) weakSelf = self;
//    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull subView, NSUInteger idx, BOOL * _Nonnull stop) {
//        CGPoint convertPoint = [weakSelf convertPoint:point toView:subView];
//        UIView *subFitView = [subView hitTest:convertPoint withEvent:event];
//        if (subFitView) {
//            fitView = subFitView;
//            *stop = YES;
//        }
//    }];
//
//    return fitView;
//}

- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event{
    NSLog(@"%@ hitTest:%@", NSStringFromClass([self class]), NSStringFromCGPoint(point));
    return [super hitTest:point withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"%@ pointInside:%@", NSStringFromClass([self class]), NSStringFromCGPoint(point));
    return [super pointInside:point withEvent:event];
}

@end

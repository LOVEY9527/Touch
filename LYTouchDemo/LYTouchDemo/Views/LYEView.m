//
//  LYEView.m
//  LYTouchDemo
//
//  Created by admin on 2019/5/12.
//  Copyright © 2019 ly. All rights reserved.
//

#import "LYEView.h"

@implementation LYEView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *log = [NSString stringWithFormat:@"%@", NSStringFromClass([self class])];
    UIResponder *nextResponder = self.nextResponder;
    while (nextResponder) {
        log = [log stringByAppendingFormat:@" -> %@", NSStringFromClass([nextResponder class])];
        nextResponder = nextResponder.nextResponder;
    }
    NSLog(@"%@", log);
    
    [super touchesBegan:touches withEvent:event];
}

@end

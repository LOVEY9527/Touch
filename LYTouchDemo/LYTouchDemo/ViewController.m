//
//  ViewController.m
//  LYTouchDemo
//
//  Created by admin on 2019/4/25.
//  Copyright © 2019 ly. All rights reserved.
//

#import "ViewController.h"
#import "LYShareInstance.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置view可同时接收多个触摸，否则默认接收第一个触摸
    self.view.multipleTouchEnabled = YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Begin===>touches:%@\nallTouches:%@", touches, event.allTouches);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [LYShareInstance sharedInstance].touchEndDate = [NSDate date];
    NSLog(@"End===>touches:%@\nallTouches:%@", touches, event.allTouches);
}

@end

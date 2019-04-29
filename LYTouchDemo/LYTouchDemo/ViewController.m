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
@property (weak, nonatomic) IBOutlet UIView *firstSubView;
@property (weak, nonatomic) IBOutlet UIView *firstSubSubView;

@property (weak, nonatomic) IBOutlet UIView *secondSubView;
@property (weak, nonatomic) IBOutlet UIView *secondSubSubView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置view可同时接收多个触摸，否则默认接收第一个触摸
    self.view.multipleTouchEnabled = YES;
    
    self.firstSubView.hidden = YES;
    self.secondSubView.alpha = 0;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Begin===>touches:%@\nallTouches:%@", touches, event.allTouches);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [LYShareInstance sharedInstance].touchEndDate = [NSDate date];
    NSLog(@"End===>touches:%@\nallTouches:%@", touches, event.allTouches);
}

//- (void)motionBegan:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event {
//    NSLog(@"Begin===>motion:%@\nallTouches:%@", @(motion), event.allTouches);
//}
//
//- (void)pressesBegan:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event {
//    NSLog(@"Begin===>presses:%@\nallTouches:%@", presses, event.allTouches);
//}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//
//}

@end

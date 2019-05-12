//
//  LYRootViewController.m
//  LYTouchDemo
//
//  Created by admin on 2019/4/30.
//  Copyright © 2019 ly. All rights reserved.
//

#import "LYRootViewController.h"

@interface LYRootViewController ()

@end

@implementation LYRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"nextResponder:%@", self.nextResponder);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

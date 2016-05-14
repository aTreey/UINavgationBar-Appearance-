//
//  MYNavViewController.m
//  home_Test
//
//  Created by Apeng on 16/5/14.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import "MYNavViewController.h"

@interface MYNavViewController ()

@end

@implementation MYNavViewController

// 只执行一次
+ (void)initialize {
    [[UINavigationBar appearance] setBarTintColor:[UIColor yellowColor]];
    [[UINavigationBar appearance] setBarStyle:0];
    [[UINavigationBar appearance] setAlpha:0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

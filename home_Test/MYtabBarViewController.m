//
//  MYtabBarViewController.m
//  home_Test
//
//  Created by Apeng on 16/5/14.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import "MYtabBarViewController.h"
#import "MYNavViewController.h"
#import "MYHomeViewController.h"

@interface MYtabBarViewController ()

@end

@implementation MYtabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildVcWithVc:[[MYHomeViewController alloc] init] andTitle:@"首页" andNorImageName:@"tabBar_essence_click_icon" andSelectImageName:@"tabBar_essence"];
    
    [self addChildVcWithVc:[[UIViewController alloc] init] andTitle:@"附近" andNorImageName:@"tabBar_essence_click_icon" andSelectImageName:@"tabBar_essence"];
    
    [self addChildVcWithVc:[[UIViewController alloc] init] andTitle:@"翻译" andNorImageName:@"tabBar_essence_click_icon" andSelectImageName:@"tabBar_essence"];
    
}

- (void)addChildVcWithVc:(UIViewController *)vc andTitle:(NSString *)title andNorImageName:(NSString *)norImageName andSelectImageName:(NSString *)selImageName{
    vc.view.backgroundColor = [UIColor colorWithRed:(arc4random() % 256) / 255.0 green:(arc4random() % 256) / 255.0 blue:(arc4random() % 256) / 255.0 alpha:1.0];
    vc.title = @"首页";
    vc.tabBarItem.image = [UIImage imageNamed:norImageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selImageName];
    MYNavViewController *nav = [[MYNavViewController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}


- (void)viewWillAppear:(BOOL)animated {
    
    [[UITabBar appearance] setBarTintColor:[UIColor purpleColor]];
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

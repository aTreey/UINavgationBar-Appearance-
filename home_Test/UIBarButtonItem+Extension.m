//
//  UIBarButtonItem+Extension.m
//  home_Test
//
//  Created by Apeng on 16/5/14.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (instancetype)itemWithTitle:(NSString *)title NorImage:(NSString *)norImage HightImage:(NSString *)hightImage Target:(id)target action:(SEL)action {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:norImage] forState:UIControlStateNormal];
    
    [btn setBackgroundImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    [btn setTitle:title forState:UIControlStateNormal];
    
    btn.backgroundColor = [UIColor blueColor];
    
    btn.size = btn.currentBackgroundImage.size;
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return buttonItem;
}



@end

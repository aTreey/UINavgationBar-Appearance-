//
//  UIBarButtonItem+Extension.h
//  home_Test
//
//  Created by Apeng on 16/5/14.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (instancetype)itemWithTitle:(NSString *)title NorImage:(NSString *)norImage HightImage:(NSString *)hightImage Target:(id)target action:(SEL)action;
@end

//
//  UINavigationController+BarColorStyle.m
//  FootballProject
//
//  Created by wanghuafeng on 13-12-23.
//  Copyright (c) 2013年 wanghuafeng. All rights reserved.
//

#import "UINavigationController+BarColorStyle.h"

@implementation UINavigationController (BarColorStyle)

//- (void)setDefaultNavigationBarStyle
//{
//    self.navigationBar.titleTextAttributes = @{UITextAttributeTextColor : [UIColor whiteColor],
//                                               UITextAttributeFont : [UIFont boldSystemFontOfSize:18.0],
//                                               UITextAttributeTextShadowOffset : [NSValue valueWithUIOffset:UIOffsetZero]};
////    if (miOS7Later) {
////        [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"img_navi_bg_64"] forBarMetrics:UIBarMetricsDefault];
////    } else {
////    [self.navigationBar setBackgroundColor:[UIColor red:43 green:206 blue:119 alpha:1.0]];
//    if (miOS7Later) {
//        [self.navigationBar setBarTintColor:[UIColor red:43 green:206 blue:119 alpha:1.0]];
//    }
//    
////    }
//}

- (void)setDefaultNavigationBarStyle
{
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
}


@end

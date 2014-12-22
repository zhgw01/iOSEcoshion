//
//  UIViewController+Addition.m
//  FootballProject
//
//  Created by wanghuafeng on 14-9-13.
//  Copyright (c) 2014年 wanghuafeng. All rights reserved.
//

#import "UIViewController+Addition.h"

@implementation UIViewController (Addition)

- (void)iOS7LaterScrollAdaptation
{
    if (miOS7Later) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.extendedLayoutIncludesOpaqueBars = YES;
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
}

@end

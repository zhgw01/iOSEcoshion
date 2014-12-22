//
//  UIView+Addition.m
//  FootballProject
//
//  Created by wanghuafeng on 13-11-1.
//  Copyright (c) 2013年 wanghuafeng. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (UIView *)subViewWithTag:(int)tag
{
	for (UIView *v in self.subviews)
    {
		if (v.tag == tag)
        {
			return v;
		}
	}
	return nil;
}

+ (instancetype)tableFooterView
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, mScreenWidth, 1)];
    return view;
}

@end

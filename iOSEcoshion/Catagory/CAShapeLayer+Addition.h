//
//  CAShapeLayer+Addition.h
//  ShoppingList
//
//  Created by majun on 12/9/14.
//  Copyright (c) 2014 wanghuafeng. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CAShapeLayer (Addition)

+ (instancetype)circleShapeLayerWithColor:(UIColor *)color center:(CGPoint)aCenter radius:(CGFloat)aRadius;

@end

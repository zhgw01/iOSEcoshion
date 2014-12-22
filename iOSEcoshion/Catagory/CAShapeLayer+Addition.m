//
//  CAShapeLayer+Addition.m
//  ShoppingList
//
//  Created by majun on 12/9/14.
//  Copyright (c) 2014 wanghuafeng. All rights reserved.
//

#import "CAShapeLayer+Addition.h"

@implementation CAShapeLayer (Addition)

+ (instancetype)circleShapeLayerWithColor:(UIColor *)color center:(CGPoint)aCenter radius:(CGFloat)aRadius
{
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:aCenter radius:aRadius startAngle:-M_PI_2 endAngle:M_PI * 3 / 2 clockwise:YES];
    
    return [self layerWithPath:path color:color];
}

+ (CAShapeLayer *)layerWithPath:(UIBezierPath *)path color:(UIColor *)color
{
    CAShapeLayer *item = [CAShapeLayer layer];
    item.fillColor = [[UIColor clearColor] CGColor];
    item.lineCap = kCALineCapRound;
    item.lineWidth = 1.f;
    item.path = path.CGPath;
    item.strokeColor = color.CGColor;
    item.strokeEnd = 1.0;
    item.masksToBounds = NO;
    return item;
}

@end

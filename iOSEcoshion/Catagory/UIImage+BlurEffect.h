//
//  UIImage+BlurEffect.h
//  ShoppingList
//
//  Created by majun on 11/5/14.
//  Copyright (c) 2014 wanghuafeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BlurEffect)

- (instancetype)gaussianBlurWithRadius:(CGFloat)level;
- (instancetype)blurView:(UIView *)view inRect:(CGRect)rect radius:(CGFloat)radius;

+ (instancetype)blurKeyWindowWith:(CGFloat)radius;

@end

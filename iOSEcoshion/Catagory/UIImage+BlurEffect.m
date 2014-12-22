//
//  UIImage+BlurEffect.m
//  ShoppingList
//
//  Created by majun on 11/5/14.
//  Copyright (c) 2014 wanghuafeng. All rights reserved.
//

#import "UIImage+BlurEffect.h"

@implementation UIImage (BlurEffect)

- (instancetype)gaussianBlurWithRadius:(CGFloat)level
{
    CIImage *ciImage = [CIImage imageWithCGImage:self.CGImage];
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur" keysAndValues:kCIInputImageKey, ciImage, @"inputRadius", @(level), nil];
    
//    UIImage *image = [UIImage imageWithCIImage:filter.outputImage];
//    CGFloat scaleX = mScreenWidth / image.size.width;
//    CGFloat scaleY = mScreenHeight / image.size.height;
//    
//    NSLog(@"%@", NSStringFromCGRect(filter.outputImage.extent));
//    CIImage *outputImage = [filter.outputImage imageByApplyingTransform:CGAffineTransformMakeScale(scaleX, scaleY)];
//    NSLog(@"%@", NSStringFromCGRect(outputImage.extent));
    
    CIImage *outputImage = [filter.outputImage imageByCroppingToRect:(CGRect){
        .origin.x = 0,
        .origin.y = 0,
        .size.width = ciImage.extent.size.width,
        .size.height = ciImage.extent.size.height
    }];
    
//    CIImage *outputImage = [filter.outputImage imageByCroppingToRect:(CGRect){
//        .origin.x = ((filter.outputImage.extent.size.width - self.size.width) / 2.f),
//        .origin.y = ((filter.outputImage.extent.size.height - self.size.height) / 2.f),
//        .size.width = ciImage.extent.size.width,
//        .size.height = ciImage.extent.size.height
//    }];
    
//    CGRect rect = [outputImage extent];
//    rect.origin.x          += (rect.size.width  - self.size.width ) / 2;
//    rect.origin.y          += (rect.size.height - self.size.height) / 2;
//    rect.size               = self.size;
//    
//    CIContext *context      = [CIContext contextWithOptions:nil];
//    CGImageRef cgimg        = [context createCGImage:outputImage fromRect:rect];
//    UIImage   *blurredImage = [UIImage imageWithCGImage:cgimg];
    
    
    UIImage *blurredImage = [UIImage imageWithCIImage:outputImage];
    return blurredImage;
//    return image;
}

- (instancetype)blurView:(UIView *)view inRect:(CGRect)rect radius:(CGFloat)radius
{
    UIImage *image = [self croppingView:view rect:rect];
    return [image gaussianBlurWithRadius:radius];
}

- (UIImage *)croppingView:(UIView *)view rect:(CGRect)rect
{
    UIGraphicsBeginImageContext(view.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:context];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    CGImageRef ref = CGImageCreateWithImageInRect(img.CGImage, rect);
    UIImage *i = [UIImage imageWithCGImage:ref];
    CGImageRelease(ref);
    
    return i;
}

+ (instancetype)blurKeyWindowWith:(CGFloat)radius
{
    UIImage *viewImage = [UIImage grabScreenWithScale:1];
    UIImage *blurImage = [viewImage gaussianBlurWithRadius:5.f];
    
    return blurImage;
}

@end

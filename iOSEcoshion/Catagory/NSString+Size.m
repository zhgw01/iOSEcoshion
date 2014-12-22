//
//  NSString+Size.m
//  FootballProject
//
//  Created by wanghuafeng on 14-7-27.
//  Copyright (c) 2014年 hyman wang. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)calculateSizeWithFont:(UIFont *)font constrainedSize:(CGSize)contrainedSize
{
    CGSize size = CGSizeZero;
    if (miOS7Later) {
        NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:self
                                                                             attributes:@{NSFontAttributeName:font}];
        CGRect rect = [attributedText boundingRectWithSize:contrainedSize
                                                   options:NSStringDrawingUsesLineFragmentOrigin
                                                   context:nil];
        size = rect.size;
    }else{
        size = [self sizeWithFont:font constrainedToSize:contrainedSize lineBreakMode:NSLineBreakByWordWrapping];
    }
    return size;
}

@end

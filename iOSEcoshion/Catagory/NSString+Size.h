//
//  NSString+Size.h
//  FootballProject
//
//  Created by wanghuafeng on 14-7-27.
//  Copyright (c) 2014年 hyman wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Size)

- (CGSize)calculateSizeWithFont:(UIFont *)font constrainedSize:(CGSize)contrainedSize;

@end

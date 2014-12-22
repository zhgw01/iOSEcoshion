//
//  NSString+HW.h
//  FootballProject
//
//  Created by wanghuafeng on 13-11-1.
//  Copyright (c) 2013年 wanghuafeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Addition)

/**
 *  计算字符串的字数。
 *  @param  string:输入字符串。
 *  return  返回输入字符串的字数。
 */
- (int)wordsCount;

- (NSString *)URLDecodedString;
- (NSString *)URLEncodedString;
- (NSString *)encodeStringWithUTF8;
- (NSUInteger)byteLengthWithEncoding:(NSStringEncoding)encoding;
- (NSString *)   firstComponentSeparatorByVerticalLineString;

- (NSString *)formatDateWithFormatter:(NSString *)formatter;

@end

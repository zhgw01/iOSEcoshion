//
//  Macros.h
//  iOSEcoshion
//
//  Created by 马俊 on 12/22/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#ifndef iOSEcoshion_Macros_h
#define iOSEcoshion_Macros_h

//系统目录
#define kDocuments  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
#define kCaches [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject]
#define kLibrary [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define kTemp NSTemporaryDirectory()

//----------方法简写-------
#define mAppDelegate        ((AppDelegate *)[[UIApplication sharedApplication] delegate])
#define mKeyWindow          [[UIApplication sharedApplication] keyWindow]
#define mUserDefaults       [NSUserDefaults standardUserDefaults]
#define mNotificationCenter [NSNotificationCenter defaultCenter]

//----------页面设计相关-------
#define mNavBarHeight         44.0
#define mTabBarHeight         49.0
#define mStatusBarHeight      ([UIApplication sharedApplication].statusBarFrame.size.height)
#define mScreenWidth          ([UIScreen mainScreen].bounds.size.width)
#define mScreenHeight         ([UIScreen mainScreen].bounds.size.height)
#define mHeaderViewHeight     140

// 系统
#define miOS7Later ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

//---------第三份登陆需要的key跟sceret （以后需加密)--------
#define kShareSDKAppKey        @"4efab1900240"

//sina weibo related, we should replace it with our own
#define kSinaAppKey            @"568898243"
#define kSinaAppSecret         @"38a4f8204cc784f81f9f0daaf31e02e3"
#define kSinaRedirectUri       @"http://www.sharesdk.cn"

#ifndef  __OPTIMIZE__
#define DEBUGLOG(...)   NSLog(__VA_ARGS__)
#define DEBUGPrintBaseLog	NSLog(@"%s(%d)", __FUNCTION__, __LINE__)
#define DEBUGDebugLog(s, ...)	NSLog(@"%s(%d): %@", __FUNCTION__, __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
#else
#define DEBUGLOG(...)
#define DEBUGPrintBaseLog
#define DEBUGDebugLog(s, ...)
#endif

#endif

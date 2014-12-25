//
//  TemplateViewController.h
//  iOSEcoshion
//
//  Created by 马俊 on 12/23/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#pragma mark - WARNING: This template view controller is only for storyboard rootViewController

typedef NS_ENUM(NSUInteger, TabViewControllerType) {
    FeedViewController = 1,
    ShopViewController,
    SellViewController,
    NewsViewController,
    MyselfViewController
};

#import <UIKit/UIKit.h>

@interface TemplateViewController : UIViewController

@property (nonatomic, assign) TabViewControllerType tabType;

@end

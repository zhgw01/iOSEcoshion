//
//  AppearanceManager.m
//  iOSEcoshion
//
//  Created by 马俊 on 12/24/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import "AppearanceManager.h"

@interface AppearanceManager ()

@property (nonatomic, strong) UIColor *viewBackgroundColor;
@property (nonatomic, strong) UIColor *navigationBarTintColor;
@property (nonatomic, strong) UIColor *navigationTintColor;

@end

@implementation AppearanceManager

#pragma mark - Absolutely singleton
+ (instancetype)sharedManager
{
    static AppearanceManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[AppearanceManager alloc] initPrivate];
    });
    
    return manager;
}

- (instancetype)init
{
    return [[self class] sharedManager];
}

- (instancetype)initPrivate
{
    if (self = [super init]) {
        // TODO:
    }
    
    return self;
}

@end

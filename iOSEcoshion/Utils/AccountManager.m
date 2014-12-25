//
//  AccountManager.m
//  iOSEcoshion
//
//  Created by 马俊 on 12/25/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import "AccountManager.h"

@implementation AccountManager

+ (instancetype)sharedManager
{
    static AccountManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[AccountManager alloc] initPrivate];
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

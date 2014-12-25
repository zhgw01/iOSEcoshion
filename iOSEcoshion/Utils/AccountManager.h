//
//  AccountManager.h
//  iOSEcoshion
//
//  Created by 马俊 on 12/25/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

@interface AccountManager : NSObject

@property (nonatomic, strong) UserModel *currentUser;

+ (instancetype)sharedManager;

@end

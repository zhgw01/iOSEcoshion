//
//  UserModel.h
//  iOSEcoshion
//
//  Created by 马俊 on 12/25/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

+ (instancetype)createUserName:(NSString *)aUserName email:(NSString *)aEmail address:(NSString *)aAddress phoneNumber:(NSString *)aPhoneNumber;

// TODO: add get method if needed.

@end

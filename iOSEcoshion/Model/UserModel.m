//
//  UserModel.m
//  iOSEcoshion
//
//  Created by 马俊 on 12/25/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import "UserModel.h"

@interface UserModel ()

@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *userEmail;
@property (nonatomic, strong) NSString *userAddress;
@property (nonatomic, strong) NSString *userPhoneNumber;

@end

@implementation UserModel

+ (instancetype)createUserName:(NSString *)aUserName email:(NSString *)aEmail address:(NSString *)aAddress phoneNumber:(NSString *)aPhoneNumber
{
    UserModel *model = [[[self class] alloc] init];
    model.userName = aUserName;
    model.userEmail = aEmail;
    model.userAddress = aAddress;
    model.userPhoneNumber = aPhoneNumber;
    
    return model;
}

@end

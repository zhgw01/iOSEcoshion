//
//  UserModel.m
//  iOSEcoshion
//
//  Created by 马俊 on 12/25/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import "UserAddressModel.h"
#import "UserModel.h"

@interface UserModel ()

@property (nonatomic, copy, readwrite) NSString *userName;
@property (nonatomic, copy, readwrite) NSString *userEmail;

@property (nonatomic, strong) NSMutableArray *userAddress;      // @[UserAddressModel, ...]

@property (nonatomic, copy, readwrite) NSString *userPhoneNumber;

@end

@implementation UserModel

+ (instancetype)createUserName:(NSString *)aUserName email:(NSString *)aEmail phoneNumber:(NSString *)aPhoneNumber
{
    UserModel *model = [[[self class] alloc] init];
    model.userName = aUserName;
    model.userEmail = aEmail;
    model.userPhoneNumber = aPhoneNumber;
    
    return model;
}

- (void)addAddress:(UserAddressModel *)addressModel
{
    [self.userAddress addObject:addressModel];
}

- (NSArray *)userAddressImmutable
{
    return [_userAddress copy];
}

@end

//
//  UserModel.h
//  iOSEcoshion
//
//  Created by 马俊 on 12/25/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserAddressModel;

@interface UserModel : NSObject

@property (nonatomic, copy, readonly) NSString *userName;
@property (nonatomic, copy, readonly) NSString *userEmail;
@property (nonatomic, copy, readonly) NSString *userPhoneNumber;

+ (instancetype)createUserName:(NSString *)aUserName
                         email:(NSString *)aEmail
                   phoneNumber:(NSString *)aPhoneNumber;

- (NSArray *)userAddressImmutable;
- (void)addAddress:(UserAddressModel *)addressModel;

@end

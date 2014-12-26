//
//  UserAddressModel.m
//  iOSEcoshion
//
//  Created by 马俊 on 12/26/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import "UserAddressModel.h"

@interface UserAddressModel ()

@property (nonatomic, copy, readwrite) NSString *nation;
@property (nonatomic, copy, readwrite) NSString *province;
@property (nonatomic, copy, readwrite) NSString *city;
@property (nonatomic, copy, readwrite) NSString *county;
@property (nonatomic, copy, readwrite) NSString *region;
@property (nonatomic, copy, readwrite) NSString *finalLocation;
@property (nonatomic, copy, readwrite) NSNumber *zipCode;

@end

@implementation UserAddressModel

+ (instancetype)createWithNation:(NSString *)nation province:(NSString *)aProvince city:(NSString *)aCity county:(NSString *)aCounty region:(NSString *)aRegion finalLocation:(NSString *)aFinalLocation zipCode:(NSNumber *)aZipCode
{
    UserAddressModel *addressModel = [[[self class] alloc] init];
    addressModel.nation = nation;
    addressModel.province = aProvince;
    addressModel.city = aCity;
    addressModel.county = aCounty;
    addressModel.region = aRegion;
    addressModel.finalLocation = aFinalLocation;
    addressModel.zipCode = aZipCode;
    
    return addressModel;
}

- (NSString *)addressDescription
{
    // TODO: concat address property to return a concrete address description.
    return [NSString stringWithFormat:@""];
}

@end

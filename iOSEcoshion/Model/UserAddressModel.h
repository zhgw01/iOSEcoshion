//
//  UserAddressModel.h
//  iOSEcoshion
//
//  Created by 马俊 on 12/26/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserAddressModel : NSObject

@property (nonatomic, copy, readonly) NSString *nation;
@property (nonatomic, copy, readonly) NSString *province;
@property (nonatomic, copy, readonly) NSString *city;
@property (nonatomic, copy, readonly) NSString *county;
@property (nonatomic, copy, readonly) NSString *region;
@property (nonatomic, copy, readonly) NSString *finalLocation;
@property (nonatomic, copy, readonly) NSNumber *zipCode;

+ (instancetype)createWithNation:(NSString *)nation
                        province:(NSString *)aProvince
                            city:(NSString *)aCity
                          county:(NSString *)aCounty
                          region:(NSString *)aRegion
                   finalLocation:(NSString *)aFinalLocation
                         zipCode:(NSNumber *)aZipCode;

- (NSString *)addressDescription;

@end

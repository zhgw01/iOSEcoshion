//
//  CommodityModel.h
//  iOSEcoshion
//
//  Created by 马俊 on 12/26/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

#pragma mark - Base commodity model
@interface CommodityModel : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *majorCategory;

@property (nonatomic, copy) NSString *brand;

@property (nonatomic, copy) NSNumber *originalPrice;
@property (nonatomic, copy) NSNumber *currentPrice;

@property (nonatomic, copy) NSNumber *size;

@property (nonatomic, copy) NSString *publishDate;

@property (nonatomic, assign, getter=hasSold) BOOL sold;

@property (nonatomic, copy) NSArray *likes;             // @[UserModel, ...]
@property (nonatomic, copy) NSArray *comments;          // @[@{UserModel: @"comment"}, ...]
@property (nonatomic, copy) NSArray *imagesAddress;     // @[@"image address 1", ...]

@property (nonatomic, weak) UserModel *ownerr;          // who it belongs to. **use WEAK reference**

@end

// use Polymorphism to handle concreate model
// Concrete commodity model ///////////////////////////////
#pragma mark - Skirt model
@interface Skirt : CommodityModel

@end

#pragma mark - Pants model
@interface Pants : CommodityModel

@end

#pragma mark - Overcoat model
@interface Overcoat : CommodityModel

@end

#pragma mark - T-shirt model
@interface TShirt : CommodityModel

@end

#pragma mark - Shirt model
@interface Shirt : CommodityModel

@end

#pragma mark - Sweater model
@interface Sweater : CommodityModel

@end

#pragma mark - Boots model
@interface Boots : CommodityModel

@end

#pragma mark - Shoes Model
@interface Shoes : CommodityModel

@end

#pragma mark - Handbag model
@interface Handbag : CommodityModel

@end

#pragma mark - Accessory Model
@interface Accessory : CommodityModel

@end

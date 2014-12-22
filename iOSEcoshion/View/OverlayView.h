//
//  OverlayView.h
//  ShoppingList
//
//  Created by majun on 12/4/14.
//  Copyright (c) 2014 wanghuafeng. All rights reserved.
//

typedef void(^clickAction)(void);

#import <UIKit/UIKit.h>

@interface OverlayView : UIView

@property (nonatomic, assign) NSTimeInterval persistenceTime;

- (instancetype)initWithTitle:(NSString *)aTitle;
- (instancetype)initWithTitle:(NSString *)aTitle click:(clickAction)action;
- (instancetype)initWithTitle:(NSString *)aTitle click:(clickAction)action automaticallyFadeOut:(BOOL)fadeout;
//- (instancetype)initWithTitle:(NSString *)aTitle buttonTarget:(id)target action:(SEL)selector automaticallyFadeOut:(BOOL)fadeout;

- (void)removeOverlay;

@end

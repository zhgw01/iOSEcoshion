//
//  OverlayView.m
//  ShoppingList
//
//  Created by majun on 12/4/14.
//  Copyright (c) 2014 wanghuafeng. All rights reserved.
//

#define OverlayViewTag 12368

#import "OverlayView.h"

@interface OverlayView ()

@property (nonatomic, copy) clickAction action;
@property (nonatomic, assign) BOOL automaticallyFadeOut;

@end

@implementation OverlayView

- (instancetype)initWithTitle:(NSString *)aTitle click:(clickAction)action
{
    if (self = [super initWithFrame:CGRectMake(0, -64, mScreenWidth, mStatusBarHeight + mNavBarHeight)]) {
        [[mKeyWindow viewWithTag:OverlayViewTag] removeFromSuperview];
        
        self.backgroundColor = [UIColor colorWithWhite:0.174 alpha:1.000];
        self.tag = OverlayViewTag;
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 20.0, mScreenWidth, 44.0)];
        titleLabel.text = aTitle;
        titleLabel.font = [UIFont systemFontOfSize:18.0];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:titleLabel];
        
        self.action = action;
        self.automaticallyFadeOut = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickSelf)];
        [self addGestureRecognizer:tap];
    }
    
    return self;
}

- (instancetype)initWithTitle:(NSString *)aTitle
{
    return [self initWithTitle:aTitle click:nil];
}

- (instancetype)initWithTitle:(NSString *)aTitle click:(clickAction)action automaticallyFadeOut:(BOOL)fadeout
{
    self = [self initWithTitle:aTitle click:action];
    self.automaticallyFadeOut = fadeout;
    
    if (!fadeout) {        
        UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
        cancelButton.frame = CGRectMake(mScreenWidth - 60.0, mStatusBarHeight, 60.0, mNavBarHeight);
        [cancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [cancelButton setTitleColor:[UIColor colorWithRed:0.315 green:1.000 blue:0.775 alpha:1.000] forState:UIControlStateNormal];
        [cancelButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:cancelButton];
    }
    
    return self;
}

- (void)didMoveToWindow
{
    [UIView animateWithDuration:.3f animations:^{
        self.top = 0.0;
    }];
    
    if (self.automaticallyFadeOut) {
        NSTimeInterval time = self.persistenceTime > 0 ? : 3.f;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self removeOverlay];
        });
    }
}

- (void)clickSelf
{
    if (self.action) {
        self.action();
    } else {
        [self removeOverlay];
    }
}

- (void)buttonAction
{
    if (self.action) {
        self.action();
    }
}

- (void)removeOverlay
{
    [UIView animateWithDuration:.3f animations:^{
        self.top = -64.f;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (void)dealloc
{
    DEBUGLOG(@"overlay dealloc");
}

//- (instancetype)initWithTitle:(NSString *)aTitle buttonTarget:(id)target action:(SEL)selector automaticallyFadeOut:(BOOL)fadeout
//{
//    self = [self initWithTitle:aTitle click:nil];
//    self.automaticallyFadeOut = fadeout;
//
//    if (!fadeout) {
//        UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        cancelButton.frame = CGRectMake(mScreenWidth - 60.0, mStatusBarHeight, 60.0, mNavBarHeight);
//        [cancelButton setTitle:@"取消" forState:UIControlStateNormal];
//        [cancelButton setTitleColor:[mAppearanceManager itemNormalColor] forState:UIControlStateNormal];
//        [cancelButton addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
//        [self addSubview:cancelButton];
//    }
//
//    return self;
//}


@end

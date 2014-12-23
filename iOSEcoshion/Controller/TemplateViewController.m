//
//  TemplateViewController.m
//  iOSEcoshion
//
//  Created by 马俊 on 12/23/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import "TemplateViewController.h"

@interface TemplateViewController ()

@end

@implementation TemplateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *storyboard = nil;
    UINavigationController *viewController;
    switch (self.tabType) {
        case FeedViewController:{
            storyboard = [UIStoryboard storyboardWithName:@"Feed" bundle:nil];
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"FeedNavigationController"];
        }
            break;
        case ShopViewController:{
            storyboard = [UIStoryboard storyboardWithName:@"Shop" bundle:nil];
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"ShopNavigationController"];
        }
            break;
        case SellViewController:{
            storyboard = [UIStoryboard storyboardWithName:@"Sell" bundle:nil];
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"SellNavigationController"];
        }
            break;
        case NewsViewController:{
            storyboard = [UIStoryboard storyboardWithName:@"News" bundle:nil];
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"NewsNavigationController"];
        }
            break;
        case MyselfViewController:{
            storyboard = [UIStoryboard storyboardWithName:@"Myself" bundle:nil];
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"MyselfNavigationController"];
        }
            break;
    }
    
    [self.view addSubview:viewController.view];
    [self addChildViewController:viewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

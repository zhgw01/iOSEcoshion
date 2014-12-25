//
//  BindingMailViewController.m
//  iOSEcoshion
//
//  Created by 马俊 on 12/25/14.
//  Copyright (c) 2014 ChaseFuture. All rights reserved.
//

#import "BindingMailViewController.h"

@interface BindingMailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UITextField *mailTextField;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;

@end

@implementation BindingMailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSString *mailInformation = [NSString stringWithFormat:@"邮箱：%@， 用户名：%@", self.mailTextField.text, self.usernameTextField.text];
    [UIAlertView bk_showAlertViewWithTitle:@"确定" message:mailInformation cancelButtonTitle:@"取消" otherButtonTitles:@[@"确定"] handler:^(UIAlertView *alertView, NSInteger buttonIndex) {
        if (buttonIndex == 1) {
            [self performSegueWithIdentifier:identifier sender:sender];
        }
    }];
    
    return NO;
}

@end

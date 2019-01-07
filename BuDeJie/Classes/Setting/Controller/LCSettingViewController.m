//
//  LCSettingViewController.m
//  BuDeJie
//
//  Created by LongMac on 2019/1/7.
//  Copyright © 2019年 LongMac. All rights reserved.
//

#import "LCSettingViewController.h"

@interface LCSettingViewController ()

@end

@implementation LCSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"设置";
    
    
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"Jump" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button sizeToFit];
    [button addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}



- (void)jump {
    UIViewController *vc = [[UIViewController alloc] init];
    [vc.view setBackgroundColor:[UIColor redColor]];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

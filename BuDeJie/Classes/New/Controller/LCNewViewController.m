//
//  LCNewViewController.m
//  BuDeJie
//
//  Created by LongMac on 2018/12/28.
//  Copyright © 2018年 LongMac. All rights reserved.
//

#import "LCNewViewController.h"

@interface LCNewViewController ()

@end

@implementation LCNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];
    //设置导航栏
    [self setupNavBar];
}

/**
 设置导航栏
 */
- (void)setupNavBar {
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highlightedImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(tagButtonClick)];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}

/**
 标签按钮点击事件
 */
- (void)tagButtonClick {
    LCLogFunc;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

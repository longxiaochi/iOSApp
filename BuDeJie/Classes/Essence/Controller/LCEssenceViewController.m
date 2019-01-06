//
//  LCEssenceViewController.m
//  BuDeJie
//
//  Created by LongMac on 2018/12/28.
//  Copyright © 2018年 LongMac. All rights reserved.
//

#import "LCEssenceViewController.h"

@interface LCEssenceViewController ()

@end

@implementation LCEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    //设置导航栏
    [self setupNavBar];
}

/**
 设置导航栏
 */
- (void)setupNavBar {
    //1.设置左边图标
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highlightedImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(gameButtonClick)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highlightedImage:[UIImage imageNamed:@"navigationButtonRandomClick"] target:nil action:nil];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}


/**
 游戏按钮被点击的事件
 */
- (void)gameButtonClick {
    LCLogFunc;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

//
//  LCFriendTrendViewController.m
//  BuDeJie
//
//  Created by LongMac on 2018/12/28.
//  Copyright © 2018年 LongMac. All rights reserved.
//

#import "LCFriendTrendViewController.h"

@interface LCFriendTrendViewController ()

@end

@implementation LCFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    //设置导航栏
    [self setupNavBar];
}

/**
 设置导航栏
 */
- (void)setupNavBar {
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highlightedImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(recommentButtonClick)];
    
    self.navigationItem.title = @"我的关注";
}

/**
 关注按钮点击事件
 */
- (void)recommentButtonClick {
    LCLogFunc;
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

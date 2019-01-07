//
//  LCNavigationController.m
//  BuDeJie
//
//  Created by LongMac on 2019/1/7.
//  Copyright © 2019年 LongMac. All rights reserved.
//

#import "LCNavigationController.h"

@interface LCNavigationController ()

@end

@implementation LCNavigationController

+ (void)load {
    //设置导航栏标题字体大小(谁的事情，谁管理，所以自定义)
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [navBar setTitleTextAttributes:dic];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


/**
 重写push方法，统一设置返回按钮

 @param viewController 即将展示的页面
 @param animated 是否需要动画
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    LCLogFunc;
    //根控制器没有子控制器
    if([self.childViewControllers count] > 0) {
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backItemWithImage:[UIImage imageNamed:@"navigationButtonReturn"] highlightedImage:[UIImage imageNamed:@"navigationButtonReturnClick"] target:self action:@selector(backButtonClick) title:@"返回"];
    }

    //重写方法一定要记得调用父类的方法
    [super pushViewController:viewController animated:animated];
}

/**
 返回按钮点击事件
 */
- (void)backButtonClick {
    [self popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

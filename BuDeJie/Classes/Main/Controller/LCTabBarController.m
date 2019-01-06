//
//  LCTabBarController.m
//  BuDeJie
//
//  Created by LongMac on 2018/12/30.
//  Copyright © 2018年 LongMac. All rights reserved.
//

#import "LCTabBarController.h"
#import "LCEssenceViewController.h"
#import "LCFriendTrendViewController.h"
#import "LCPublishViewController.h"
#import "LCNewViewController.h"
#import "LCMeViewController.h"
#import "UIImage+Image.h"
#import "LCTabBar.h"
#import <objc/runtime.h>

@interface LCTabBarController ()

@end

@implementation LCTabBarController

// 这个方法只执行一次
+ (void)load {
    //appearance是获取整个应用下的所有的xx。
    //获取self 下的所有TabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[self]];
    
    //设置title的颜色
    NSMutableDictionary *attrDic = [NSMutableDictionary dictionary];
    attrDic[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:attrDic forState:UIControlStateSelected];
    
    //设置title字体的大小
    NSMutableDictionary *attrDic2 = [NSMutableDictionary dictionary];
    attrDic2[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attrDic2 forState:UIControlStateNormal];
    
    //注意：title字体的大小只有在正常模式下设置才起作用
}

//initialize 方法可能会执行多次,所以需要判断是哪个类的
+ (void)initialize
{
    if (self == [LCTabBarController class]) {
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置TabBar所有的子控制器
    [self setupAllChildViewController];
    
    //设置TabBarItem标题
    [self setupAllTabBarItemTitle];
    
    //设置自定义的UItabBar
    [self setupTabBar];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //实际上是在这里设置的UITabBarButton
}

/**
 设置自定义的TabBar
 */
- (void)setupTabBar {
    
    LCTabBar *tabBar = [[LCTabBar alloc] init];
    //使用KVC
    [self setValue:tabBar forKeyPath:@"tabBar"];
}

/**
 设置TabBar所有的子控制器
 */
- (void)setupAllChildViewController {
    //精华
    LCEssenceViewController *essenceVc = [[LCEssenceViewController alloc] init];
    UINavigationController *essenceNav = [[UINavigationController alloc] initWithRootViewController:essenceVc];
    [self addChildViewController:essenceNav];
    
    //New
    LCNewViewController *newVc = [[LCNewViewController alloc] init];
    UINavigationController *newNav = [[UINavigationController alloc] initWithRootViewController:newVc];
    [self addChildViewController:newNav];
    
    //发布
//    LCPublishViewController *publishVc = [[LCPublishViewController alloc] init];
//    [self addChildViewController:publishVc];
    
    //FriendTrend(好友)
    LCFriendTrendViewController *friendTrendVc = [[LCFriendTrendViewController alloc] init];
    UINavigationController *friendTrendNav = [[UINavigationController alloc] initWithRootViewController:friendTrendVc];
    [self addChildViewController:friendTrendNav];
    
    //我
    LCMeViewController *meVc = [[LCMeViewController alloc] init];
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVc];
    [self addChildViewController:meNav];
}

/**
 设置TabBarItem标题
 */
- (void)setupAllTabBarItemTitle {
    //设置子控制器的TabBarItem
    //精华
    UINavigationController *essenceNav = self.childViewControllers[0];
    essenceNav.tabBarItem.title = @"精华";
    essenceNav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    essenceNav.tabBarItem.selectedImage = [UIImage imageOriginalName:@"tabBar_essence_click_icon"];

    //新帖
    UINavigationController *newNav = self.childViewControllers[1];
    newNav.tabBarItem.title = @"新帖";
    newNav.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    newNav.tabBarItem.selectedImage = [UIImage imageOriginalName:@"tabBar_new_click_icon"];
    
//    //发布
//    LCPublishViewController *publishVc = self.childViewControllers[2];
//    publishVc.tabBarItem.image = [UIImage imageOriginalName:@"tabBar_publish_icon"];
//    publishVc.tabBarItem.selectedImage = [UIImage imageOriginalName:@"tabBar_publish_click_icon"];
    
    //关注
    UINavigationController *friendTrendNav = self.childViewControllers[2];
    friendTrendNav.tabBarItem.title = @"关注";
    friendTrendNav.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    friendTrendNav.tabBarItem.selectedImage = [UIImage imageOriginalName:@"tabBar_friendTrends_click_icon"];
    
    //我的
    UINavigationController *meNav = self.childViewControllers[3];
    meNav.tabBarItem.title = @"我的";
    meNav.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    meNav.tabBarItem.selectedImage = [UIImage imageOriginalName:@"tabBar_me_click_icon"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

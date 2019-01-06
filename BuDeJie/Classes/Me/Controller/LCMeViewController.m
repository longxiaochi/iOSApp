//
//  LCMeViewController.m
//  BuDeJie
//
//  Created by LongMac on 2018/12/28.
//  Copyright © 2018年 LongMac. All rights reserved.
//

#import "LCMeViewController.h"

@interface LCMeViewController ()

@end

@implementation LCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    //设置导航栏
    [self setupNavBar];
}

/**
 设置导航栏
 */
- (void)setupNavBar {
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highlightedImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(settingButtonClick)];
    
    UIBarButtonItem *nightItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] selectedImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(nightButtonClick:)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem, nightItem];
    self.navigationItem.title = @"我";
}

/**
 设置按钮点击事件
 */
- (void)settingButtonClick {
    LCLogFunc;
}

/**
 夜间模式按钮点击事件
 */
- (void)nightButtonClick:(UIButton *)button {
    button.selected = !button.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

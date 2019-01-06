//
//  LCTabBar.m
//  BuDeJie
//
//  Created by LongMac on 2019/1/6.
//  Copyright © 2019年 LongMac. All rights reserved.
//

#import "LCTabBar.h"
#import "UIView+Frame.h"

@interface LCTabBar()

@property (nonatomic, strong) UIButton *plusButton;

@end

@implementation LCTabBar


/**
  plus按钮只需添加一次，所以使用到了懒加载
 */
- (UIButton *)plusButton {
    if(!_plusButton) {
        _plusButton = [[UIButton alloc] init];
        
        [_plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [_plusButton sizeToFit];
        
        //添加到tabBar上
        [self addSubview:_plusButton];
    }
    return _plusButton;
}

/**
 设置TabBarButton的位置
 */
- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSUInteger cout = [self.items count] + 1;
    CGFloat btnW = self.lc_with / cout;
    CGFloat btnH = self.lc_height;
    
    NSInteger index = 0;
    for(id obj in self.subviews) {
        if([obj isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if(index == 2) {
                index += 1;
            }
            
            [obj setFrame:CGRectMake(btnW * index, 0, btnW, btnH)];
            index++;
        }
    }
    
    self.plusButton.center = CGPointMake(self.lc_with * 0.5, self.lc_height * 0.5);
}

@end

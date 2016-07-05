//
//  XMGMineController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGMineController.h"
#import "UIBarButtonItem+item.h"

@implementation XMGMineController
- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setUpNavigationBar];
}
- (void)setUpNavigationBar {
    self.navigationItem.title = @"我的";
    UIBarButtonItem *mineMoon = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] imageSel:[UIImage imageNamed:@"mine-moon-icon-click"] addTarget:self action:@selector(mineMoonBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIBarButtonItem *mineSetting = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highImage:[UIImage imageNamed:@"mine-setting-icon-click"] addTarget:self action:@selector(mineSettingClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.navigationItem.rightBarButtonItems = @[mineSetting,mineMoon];
    
}
- (void)mineMoonBtnClick:(UIButton *)mineMoonBtn {
    if(mineMoonBtn.selected){
    mineMoonBtn.selected = NO;
    }else{
    mineMoonBtn.selected = YES;
    }
    NSLog(@"点击了mineMoonBtnClick");
}

- (void)mineSettingClick {
    NSLog(@"点击了mineSettingClick");
}
@end

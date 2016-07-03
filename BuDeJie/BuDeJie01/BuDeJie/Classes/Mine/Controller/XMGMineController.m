//
//  XMGMineController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGMineController.h"

@implementation XMGMineController
- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setUpNavigationBar];
}
- (void)setUpNavigationBar {
     self.navigationItem.title = @"我的";
    UIButton *mineMoonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [mineMoonBtn setImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [mineMoonBtn setImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateSelected];
    [mineMoonBtn addTarget:self action:@selector(mineMoonBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [mineMoonBtn sizeToFit];
    UIView *moonView = [[UIView alloc] initWithFrame:mineMoonBtn.bounds];
    [moonView addSubview:mineMoonBtn];
    UIBarButtonItem *mineMoon = [[UIBarButtonItem alloc] initWithCustomView:moonView];
    
    UIButton *mineSettingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [mineSettingBtn setImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [mineSettingBtn setImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    [mineSettingBtn sizeToFit];
    UIView *settingView = [[UIView alloc] initWithFrame:mineSettingBtn.bounds];
    [settingView addSubview:mineSettingBtn];
    UIBarButtonItem *mineSetting = [[UIBarButtonItem alloc] initWithCustomView:settingView];
    
    self.navigationItem.rightBarButtonItems = @[mineSetting,mineMoon];
    
}
- (void)mineMoonBtnClick:(UIButton *)mineMoonBtn {
    if(mineMoonBtn.selected){
    mineMoonBtn.selected = NO;
    }else{
    mineMoonBtn.selected = YES;
    }
}
@end

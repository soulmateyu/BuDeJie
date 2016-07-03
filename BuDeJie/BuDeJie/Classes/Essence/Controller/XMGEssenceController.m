//
//  XMGEssenceController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGEssenceController.h"

@implementation XMGEssenceController
-(void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavigationBar];
}
-(void)setUpNavigationBar {
    UIButton *gameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [gameBtn setImage:[UIImage imageNamed:@"nav_item_game_icon"] forState:UIControlStateNormal];
    [gameBtn setImage:[UIImage imageNamed:@"nav_item_game_click_icon"] forState:UIControlStateSelected];
    [gameBtn sizeToFit];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:gameBtn];
}
@end

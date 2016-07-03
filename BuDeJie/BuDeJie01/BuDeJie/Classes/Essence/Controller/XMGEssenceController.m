//
//  XMGEssenceController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGEssenceController.h"
#import "UIBarButtonItem+item.h"

@implementation XMGEssenceController
-(void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavigationBar];
   
}
-(void)setUpNavigationBar {
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIButton *gameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [gameBtn setImage:[UIImage imageNamed:@"nav_item_game_icon"] forState:UIControlStateNormal];
    [gameBtn setImage:[UIImage imageNamed:@"nav_item_game_click_icon"] forState:UIControlStateHighlighted];
    [gameBtn sizeToFit];
    [gameBtn addTarget:self action:@selector(gameBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    UIView *view = [[UIView alloc] initWithFrame:gameBtn.bounds];
    UIView *leftView = [[UIView alloc] init];
    leftView.frame = gameBtn.bounds;
    [leftView addSubview:gameBtn];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftView];
    
    
    UIButton *randomBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [randomBtn setImage:[UIImage imageNamed:@"navigationButtonRandom"] forState:UIControlStateNormal];
    [randomBtn setImage:[UIImage imageNamed:@"navigationButtonRandomClick"] forState:UIControlStateHighlighted];
    [randomBtn sizeToFit];
    [randomBtn addTarget:self action:@selector(randomBtnClick) forControlEvents:UIControlEventTouchUpInside];
    UIView *rightView = [[UIView alloc] initWithFrame:randomBtn.bounds];
    [rightView addSubview:randomBtn];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightView];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] addTarget:self action:@selector(randomBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)gameBtnClick {
    NSLog(@"点击了gameBtn");
}

- (void)randomBtnClick {
    NSLog(@"点击了randomBtn");
}
@end

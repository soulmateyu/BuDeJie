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
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] addTarget:self action:@selector(gameBtnClick) forControlEvents:UIControlEventTouchUpInside];

    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] addTarget:self action:@selector(randomBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)gameBtnClick {
    NSLog(@"点击了gameBtn");
}

- (void)randomBtnClick {
    NSLog(@"点击了randomBtn");
}
@end

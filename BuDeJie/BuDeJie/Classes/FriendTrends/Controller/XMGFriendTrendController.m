//
//  XMGFriendTrendController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGFriendTrendController.h"

@implementation XMGFriendTrendController
- (void)loadView {
    [super loadView];
    
    self.navigationItem.title = @"我的关注";
    [self setUpNavigationBar];
}

- (void)setUpNavigationBar {
    UIButton *friendsRecommentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [friendsRecommentBtn setImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [friendsRecommentBtn setImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    [friendsRecommentBtn sizeToFit];
    [friendsRecommentBtn addTarget:self action:@selector(friendsRecommentBtnClick) forControlEvents:UIControlEventTouchUpInside];
    UIView *view = [[UIView alloc] initWithFrame:friendsRecommentBtn.bounds];
    [view addSubview:friendsRecommentBtn];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:view];
}
- (void)friendsRecommentBtnClick {
    NSLog(@"点击了friendsRecommentBtn");

}
@end

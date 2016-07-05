//
//  XMGFriendTrendController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGFriendTrendController.h"
#import "UIBarButtonItem+item.h"

@implementation XMGFriendTrendController
- (void)loadView {
    [super loadView];
    
    self.navigationItem.title = @"我的关注";
    [self setUpNavigationBar];
}

- (void)setUpNavigationBar {
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] addTarget:self action:@selector(friendsRecommentBtnClick) forControlEvents:UIControlEventTouchUpInside];
}
- (void)friendsRecommentBtnClick {
    NSLog(@"点击了friendsRecommentBtn");

}
@end

//
//  XMGNewController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGNewController.h"

@implementation XMGNewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    [self setUpNavigationBar];
}

- (void)setUpNavigationBar {
    UIButton *mainTagBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [mainTagBtn setImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
    [mainTagBtn setImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
    [mainTagBtn sizeToFit];
    UIView *view = [[UIView alloc] init];
    view.frame = mainTagBtn.bounds;
    [view addSubview:mainTagBtn];
    [mainTagBtn addTarget:self action:@selector(mainTagClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:view];
}

- (void)mainTagClick {
    NSLog(@"点击了mainTagBtn");
}
@end

//
//  XMGNewController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGNewController.h"
#import "UIBarButtonItem+item.h"

@implementation XMGNewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavigationBar];
}

- (void)setUpNavigationBar {
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] addTarget:self action:@selector(mainTagClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)mainTagClick {
    NSLog(@"点击了mainTagBtn");
}
@end

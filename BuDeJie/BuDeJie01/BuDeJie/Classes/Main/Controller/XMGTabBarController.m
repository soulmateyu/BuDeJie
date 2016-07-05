//
//  XMGTabBarController.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/2.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "XMGTabBarController.h"
#import "UIImage+image.h"
#import "XMGEssenceController.h"
#import "XMGNewController.h"
#import "XMGFriendTrendController.h"
#import "XMGMineController.h"

@interface XMGTabBarController ()

@property (nonatomic, weak)UIButton *pulsBtn;

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpChildVC];
    [self setUpTabBar];
    self.pulsBtn.center = CGPointMake(self.tabBar.frame.size.width * 0.5, self.tabBar.frame.size.height * 0.5);
    
}

- (UIButton *)pulsBtn {
    if (!_pulsBtn){
        UIButton *pulsBtn = [[UIButton alloc] init];
        [pulsBtn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [pulsBtn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [pulsBtn sizeToFit];
        [self.tabBar addSubview:pulsBtn];
        self.pulsBtn = pulsBtn;
    }
    return _pulsBtn;
}


+ (void)load {
    UITabBarItem *item = [UITabBarItem appearance];
    NSDictionary *dict = [NSDictionary dictionary];
    dict = @{
             NSFontAttributeName:[UIFont systemFontOfSize:13],
             NSForegroundColorAttributeName:[UIColor blackColor]
             };
    [item setTitleTextAttributes:dict forState:UIControlStateNormal];
    
    
    
//    UITabBarItem *item = [UITabBarItem appearance];
//    
//    // 字典描述文字信息
//    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
//    attr[NSForegroundColorAttributeName] = [UIColor blackColor];
//    // 设置选中状态下文字颜色
//    [item setTitleTextAttributes:attr forState:UIControlStateSelected];
//    
//    // Bug:在选中状态下设置文字字体不成功,应该在正常状态下去设置文字字体
//    // 设置正常状态下文字字体
//    NSMutableDictionary *attrNor = [NSMutableDictionary dictionary];
//    attrNor[NSFontAttributeName] = [UIFont systemFontOfSize:13];
//    [item setTitleTextAttributes:attrNor forState:UIControlStateNormal];
}


- (void)setUpChildVC {
    
    XMGEssenceController *VC1 = [[XMGEssenceController alloc] init];
    VC1.view.backgroundColor = [UIColor cyanColor];
    UINavigationController *naVC1 = [[UINavigationController alloc] initWithRootViewController:VC1];
    [self addChildViewController:naVC1];
    
    XMGNewController *VC2 = [[XMGNewController alloc] init];
    VC2.view.backgroundColor = [UIColor yellowColor];
    UINavigationController *naVC2 = [[UINavigationController alloc] initWithRootViewController:VC2];
    [self addChildViewController:naVC2];
    
    UIViewController *VC3 = [[UIViewController alloc] init];
    VC3.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:VC3];
    
    XMGFriendTrendController *VC4 = [[XMGFriendTrendController alloc] init];
    VC4.view.backgroundColor = [UIColor grayColor];
    UINavigationController *naVC4 = [[UINavigationController alloc] initWithRootViewController:VC4];
    [self addChildViewController:naVC4];
    
    XMGMineController *VC5 = [[XMGMineController alloc] init];
    VC5.view.backgroundColor = [UIColor purpleColor];
    UINavigationController *naVC5 = [[UINavigationController alloc] initWithRootViewController:VC5];
    [self addChildViewController:naVC5];
    
    
}

- (void)setUpTabBar {
    UIViewController *childVC1 = self.childViewControllers[0];
    childVC1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    childVC1.tabBarItem.selectedImage = [UIImage imageNameWithRenderAsOriginal:@"tabBar_essence_click_icon"];
    childVC1.tabBarItem.title = @"精华";
    
    UIViewController *childVC2 = self.childViewControllers[1];
    childVC2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    childVC2.tabBarItem.selectedImage = [UIImage imageNameWithRenderAsOriginal:@"tabBar_new_click_icon"];
    childVC2.tabBarItem.title = @"新帖";
    
    
    UIViewController *childVC3 = self.childViewControllers[2];
//    childVC3.tabBarItem.image = [UIImage imageNameWithRenderAsOriginal:@"tabBar_publish_icon"];
//    childVC3.tabBarItem.selectedImage = [UIImage imageNameWithRenderAsOriginal:@"tabBar_publish_click_icon"];
    childVC3.tabBarItem.imageInsets = UIEdgeInsetsMake(3, 0, -3, 0);
    childVC3.tabBarItem.enabled = NO;
    
    
    UIViewController *childVC4 = self.childViewControllers[3];
    childVC4.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    childVC4.tabBarItem.selectedImage = [UIImage imageNameWithRenderAsOriginal:@"tabBar_friendTrends_click_icon"];
    childVC4.tabBarItem.title = @"关注";
    
    
    UIViewController *childVC5 = self.childViewControllers[4];
    childVC5.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    childVC5.tabBarItem.selectedImage = [UIImage imageNameWithRenderAsOriginal:@"tabBar_me_click_icon"];
    childVC5.tabBarItem.title = @"我";
}

@end

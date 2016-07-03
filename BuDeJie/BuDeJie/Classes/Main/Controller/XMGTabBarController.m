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

@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpChildVC];
    [self setUpTabBar];
}


- (void)setUpChildVC {
    
    UIViewController *VC1 = [[UIViewController alloc] init];
    VC1.view.backgroundColor = [UIColor cyanColor];
    UINavigationController *naVC1 = [[UINavigationController alloc] initWithRootViewController:VC1];
    [self addChildViewController:naVC1];
    
    UIViewController *VC2 = [[UIViewController alloc] init];
    VC2.view.backgroundColor = [UIColor yellowColor];
    UINavigationController *naVC2 = [[UINavigationController alloc] initWithRootViewController:VC2];
    [self addChildViewController:naVC2];
    
    UIViewController *VC3 = [[UIViewController alloc] init];
    VC3.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:VC3];
    
    UIViewController *VC4 = [[UIViewController alloc] init];
    VC4.view.backgroundColor = [UIColor grayColor];
    UINavigationController *naVC4 = [[UINavigationController alloc] initWithRootViewController:VC4];
    [self addChildViewController:naVC4];
    
    UIViewController *VC5 = [[UIViewController alloc] init];
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
    childVC3.tabBarItem.image = [UIImage imageNameWithRenderAsOriginal:@"tabBar_publish_icon"];
    childVC3.tabBarItem.selectedImage = [UIImage imageNameWithRenderAsOriginal:@"tabBar_publish_click_icon"];
    childVC3.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
    
    
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

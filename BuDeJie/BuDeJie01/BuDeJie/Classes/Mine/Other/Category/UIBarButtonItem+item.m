//
//  UIBarButtonItem+item.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "UIBarButtonItem+item.h"

@implementation UIBarButtonItem (item)
+ (UIBarButtonItem *) itemWithimage:(UIImage *)imageNor highImage:(UIImage *)imageHigh addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:imageNor forState:UIControlStateNormal];
    [btn setImage:imageHigh forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:controlEvents];
    UIView *view = [[UIView alloc] initWithFrame:btn.bounds];
    [view addSubview:btn];
    return [[UIBarButtonItem alloc] initWithCustomView:view];
    
}
@end

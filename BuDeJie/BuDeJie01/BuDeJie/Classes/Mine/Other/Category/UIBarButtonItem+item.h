//
//  UIBarButtonItem+item.h
//  BuDeJie
//
//  Created by 余朝 on 16/7/3.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (item)
+ (UIBarButtonItem *) itemWithImage:(UIImage *)imageNor highImage:(UIImage *)imageHigh addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

+ (instancetype) itemWithImage:(UIImage *)imageNor imageSel:(UIImage *)ImageSel addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
@end

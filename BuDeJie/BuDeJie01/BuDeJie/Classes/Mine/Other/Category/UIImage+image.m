//
//  UIImage+image.m
//  BuDeJie
//
//  Created by 余朝 on 16/7/2.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)
+ (UIImage *)imageNameWithRenderAsOriginal:(NSString *) imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end

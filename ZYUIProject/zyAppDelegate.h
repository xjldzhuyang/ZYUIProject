//
//  zyAppDelegate.h
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZYNavigationController.h"
#define __THEME_COLOR [UIColor colorWithRed:255/255. green:24/255. blue:0/255. alpha:1]
#define __THEME_COLOR_1 [UIColor colorWithRed:5/255. green:244/255. blue:10/255. alpha:1]

@interface zyAppDelegate : UIResponder <UIApplicationDelegate>
{
    UITabBarController *zyTabBarController;
    //每个tab中的UINavigationController
    UINavigationController *nav;
}
@property (strong, nonatomic) UIWindow *window;
//用来控制屏幕不能自动旋转
@property (strong, nonatomic) ZYNavigationController *zyNavigetionController;

@end

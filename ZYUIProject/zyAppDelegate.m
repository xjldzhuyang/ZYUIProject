//
//  zyAppDelegate.m
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import "zyAppDelegate.h"
#import "WidgetViewController.h"
#import "AnimationViewController.h"
#import "ZYToolTableViewController.h"

@implementation zyAppDelegate
@synthesize zyNavigetionController;

- (void) customizeInterface {
    [[UISwitch appearance] setTintColor:__THEME_COLOR];
    [[UISwitch appearance] setOnTintColor:__THEME_COLOR];
    [[UIButton appearance] setTintColor:__THEME_COLOR];
    //设置tab的颜色
    [[UITabBar appearance] setTintColor:__THEME_COLOR_1];
    [[UINavigationBar appearance] setBarTintColor:__THEME_COLOR];
    [[UISegmentedControl appearance] setTintColor:__THEME_COLOR];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleBlack];
    [[UILabel appearance] setTextColor:__THEME_COLOR];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    [self customizeInterface];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    NSMutableArray *controllers = [NSMutableArray array];
    //控件页面
    WidgetViewController *widgetViewController = [[WidgetViewController alloc] init];
    nav = [[UINavigationController alloc] initWithRootViewController:widgetViewController];
    //设置该navigationBar 的背景颜色以及style
    nav.navigationBar.backgroundColor = [UIColor brownColor];
    nav.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    nav.title = @"控件列表";
    nav.tabBarItem.image = [UIImage imageNamed:@"BarAsk.png"];
//    nav.navigationBarHidden = YES;
    [controllers addObject:nav];
    
    //动画页面
    AnimationViewController *animationViewController = [[AnimationViewController alloc] init];
    nav = [[UINavigationController alloc] initWithRootViewController:animationViewController];
    //设置navigationBar 背景，不会影响通知栏
//    if ([nav.navigationBar respondsToSelector:@selector( setBackgroundImage:forBarMetrics:)]){
//        [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"Navbarbg.png"] forBarMetrics:UIBarMetricsDefault];
//    }
    //设置颜色会影响通知栏
    nav.navigationBar.backgroundColor = [UIColor redColor];
    nav.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    nav.tabBarItem.image = [UIImage imageNamed:@"BarDrink.png"];
    nav.title = @"动画列表";
    [controllers addObject:nav];
    
    //工具页面
    ZYToolTableViewController *zYToolTableViewController = [[ZYToolTableViewController alloc] init];
    nav = [[UINavigationController alloc] initWithRootViewController:zYToolTableViewController];
    nav.navigationBar.backgroundColor = [UIColor yellowColor];
    nav.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    nav.title = @"工具列表";
    nav.tabBarItem.image = [UIImage imageNamed:@"BarListen.png"];
    [controllers addObject:nav];
    
    zyTabBarController = [[UITabBarController alloc] init];
    //设置tab
    zyTabBarController.viewControllers = controllers;
	zyTabBarController.customizableViewControllers = controllers;
//	zyTabBarController.delegate = self;
    //设置默认选择项
    zyTabBarController.selectedIndex = 1;
    //设置item选中的颜色
    zyTabBarController.tabBar.tintColor = [UIColor orangeColor];
    //设置背景图片
    //    zyTabBarController.tabBar.backgroundImage = [UIImage imageNamed:@"Navbarbg.png"];
    //这个背景颜色需要设置背景图片才生效，不知道为什么
	zyTabBarController.tabBar.backgroundColor=[UIColor orangeColor];
    //Item非选中状态文字颜色
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName, Nil,nil] forState:UIControlStateNormal];
//    
//    //Item选中状态文字颜色
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor greenColor],NSForegroundColorAttributeName, Nil,nil] forState:UIControlStateSelected];
    
    //ZYNavigationController设置了不能自动旋转，所以这样做就是使整个程序都不能自动旋转
    self.zyNavigetionController = [[ZYNavigationController alloc]initWithRootViewController:zyTabBarController];
    self.zyNavigetionController.navigationBarHidden=YES;
    self.window.rootViewController = zyNavigetionController;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

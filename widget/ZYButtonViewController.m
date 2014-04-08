//
//  ZYButtonViewController.m
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import "ZYButtonViewController.h"

@interface ZYButtonViewController ()

@end

@implementation ZYButtonViewController
@synthesize button1;
@synthesize label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    self.label.text = @"点击上方按钮试试";
    if (self.tabBarController.tabBar.hidden == NO)
    {
        //进入该页面，隐藏下方tabbar
        self.tabBarController.tabBar.hidden = YES;
    }
}

-(void)viewDidDisappear:(BOOL)animated
{
    self.label.text = @"";
}

-(IBAction)btn_click:(id)sender
{
    self.label.text = @"点击了按钮";
}

-(IBAction)back_click:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

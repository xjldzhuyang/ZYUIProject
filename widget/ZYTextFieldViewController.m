//
//  ZYTextFieldViewController.m
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import "ZYTextFieldViewController.h"

@interface ZYTextFieldViewController ()

@end

@implementation ZYTextFieldViewController

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

//点击屏幕其他地方，，隐藏输入法
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    //判断所点击view是否是UITextField或UITextView
    if (![[touch view] isKindOfClass:[UITextField class]] && ![[touch view] isKindOfClass:[UITextView class]]) {
        for (UIView* view in self.view.subviews) {
            if ([view isKindOfClass:[UITextField class]]) {
                [view resignFirstResponder];
            }
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

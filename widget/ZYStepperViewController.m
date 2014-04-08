//
//  ZYStepperViewController.m
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import "ZYStepperViewController.h"

@interface ZYStepperViewController ()

@end

@implementation ZYStepperViewController

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
    // Do any additional setup after loading the view.
    button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 60, 60)];
    [button setBackgroundImage:[UIImage imageNamed:@"BarAsk.png"] forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

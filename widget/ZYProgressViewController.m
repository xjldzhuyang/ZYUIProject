//
//  ZYProgressViewController.m
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import "ZYProgressViewController.h"

@interface ZYProgressViewController ()

@end

@implementation ZYProgressViewController
@synthesize progressViewDefault;
@synthesize progressViewBar;

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
    [progressViewDefault setProgress:0.9 animated:YES];
    [progressViewBar setProgress:0.8 animated:YES];
    NSThread *nsThead = [[NSThread alloc] initWithTarget:self selector:@selector(run) object:nil];
    [nsThead start];

    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
}

-(void)run
{
    for(int i = 0;i<10;i++) {
        NSLog(@"NSThread:%d",i);
    }
}

-(void)timerAction
{
    NSLog(@"NSTimer");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

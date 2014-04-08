//
//  WidgetViewController.m
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import "WidgetViewController.h"
#import "ZYButtonViewController.h"
#import "ZYLabelViewController.h"
#import "ZYTextFieldViewController.h"
#import "ZYImageViewController.h"
#import "ZYProgressViewController.h"
#import "ZYActivityIndicatorViewController.h"
#import "ZYStepperViewController.h"

@interface WidgetViewController ()

@end

@implementation WidgetViewController

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
    self.title = @"控件列表";
//    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
//    baseView.backgroundColor = [UIColor orangeColor];
//    self.view = baseView;
    
    widgetName = [NSArray arrayWithObjects:@"UIButton",@"UILabel",@"UITextField", @"UIImageView",
                  @"UIProgressView", @"UIActivityIndicatorView", @"UIStepper",
                  @"UISwitch",@"UISegmentedControl",@"UISlider",nil];
    ZYButtonViewController *zYButtonViewController = [[ZYButtonViewController alloc] initWithNibName:@"ZYButtonViewController" bundle:nil];
    ZYLabelViewController *zYLabelViewController = [[ZYLabelViewController alloc] initWithNibName:@"ZYLabelViewController" bundle:nil];
    ZYTextFieldViewController *zYTextFieldViewController = [[ZYTextFieldViewController alloc] initWithNibName:@"ZYTextFieldViewController" bundle:nil];
    ZYImageViewController *zYImageViewController = [[ZYImageViewController alloc] initWithNibName:@"ZYImageViewController" bundle:nil];
    ZYProgressViewController *zYProgressViewController = [[ZYProgressViewController alloc] initWithNibName:@"ZYProgressViewController" bundle:nil];
    ZYActivityIndicatorViewController *zYActivityIndicatorViewController = [[ZYActivityIndicatorViewController alloc] initWithNibName:@"ZYActivityIndicatorViewController" bundle:nil];
    ZYStepperViewController *zYStepperViewController = [[ZYStepperViewController alloc] init];
    
    widgetViewControllerName = [NSArray arrayWithObjects:zYButtonViewController,zYLabelViewController,zYTextFieldViewController, zYImageViewController, zYProgressViewController, zYActivityIndicatorViewController, zYStepperViewController,zYButtonViewController,zYButtonViewController,zYButtonViewController, nil];
    widgetTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.origin.y,
                                                                   self.view.frame.size.width,
                                                                   self.view.frame.size.height) style:UITableViewStylePlain];
    [widgetTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
//    [widgetTableView setBackgroundColor:[UIColor redColor]];
    widgetTableView.dataSource = self;
    widgetTableView.delegate = self;
    [self.view addSubview:widgetTableView];
}

-(void) viewDidAppear:(BOOL)animated
{
    if (self.tabBarController.tabBar.hidden == YES)
    {
        //进入该页面，显示下方tabbar
        self.tabBarController.tabBar.hidden = NO;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [widgetName count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellWithIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellWithIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellWithIdentifier];
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [widgetName objectAtIndex:row];
    return cell;
}

//设置各行换色
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([indexPath row] % 2 == 0) {
        cell.backgroundColor = [UIColor whiteColor];
    } else {
        cell.backgroundColor = [UIColor brownColor];
    }
}

//当选择指定的cell时，弹出UIAlertView显示选择的内容
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    
//    NSString *msg = [[NSString alloc] initWithFormat:@"你选择的是:%@",[widgetName objectAtIndex:[indexPath row]]];
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//    [alert show];
    
    [self.navigationController pushViewController:[widgetViewControllerName objectAtIndex:indexPath.row] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

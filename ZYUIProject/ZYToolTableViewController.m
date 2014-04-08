//
//  ZYToolTableViewController.m
//  ZYUIProject
//
//  Created by Mofocal on 14-4-2.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import "ZYToolTableViewController.h"
#import "ZYThreadViewController.h"
#import "ZYTimerViewController.h"

@interface ZYToolTableViewController ()

@end

@implementation ZYToolTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"工具列表";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//    self.editButtonItem.title = @"编辑";
//    self.editButtonItem.tintColor = [UIColor redColor];
//    self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"左边" style:UIBarButtonItemStyleBordered target:self action:@selector(doLeftClick)];
    leftItem.tintColor = [UIColor redColor];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"右边" style:UIBarButtonItemStyleBordered target:self action:@selector(doRightClick)];
    rightItem.tintColor = [UIColor redColor];
    
    self.navigationItem.leftBarButtonItem = leftItem;
    self.navigationItem.rightBarButtonItem = rightItem;

    toolName = [NSArray arrayWithObjects:@"NSTimer",@"NSThread", nil];
    
//    ZYTimerViewController *zyTimerViewController = [[ZYTimerViewController alloc] init];
//    ZYThreadViewController *zyThreadViewController = [[ZYThreadViewController alloc] init];
//    
//    toolViewControllerName = [NSArray arrayWithObjects:zyTimerViewController, zyThreadViewController, nil];
//    toolViewControllerName = [NSArray arrayWithObjects:<#(id), ...#>, nil];
    //去掉分割线
//    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    //设置分割线颜色
//    [self.tableView setSeparatorColor:[UIColor redColor]];
//    self.tableView.backgroundColor = [UIColor redColor];
}

//当使用UITableView 的Plain风格时，cell的数量占不满一屏时，会出现无用的cell分割线，下面两个方法解决该问题
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01f;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [UIView new];
    
    // If you are not using ARC:
    // return [[UIView new] autorelease];
}

-(void)doLeftClick
{
}

-(void)doRightClick
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [toolName count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellWithIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellWithIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellWithIdentifier];
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [toolName objectAtIndex:row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *msg = [[NSString alloc] initWithFormat:@"你选择的是:%@",[toolName objectAtIndex:[indexPath row]]];
    [[[UIAlertView alloc] initWithTitle:@"工具" message:msg delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil] show];
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor yellowColor];
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return NO;
}


/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

@end

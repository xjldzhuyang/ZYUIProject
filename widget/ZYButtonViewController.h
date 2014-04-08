//
//  ZYButtonViewController.h
//  ZYUIProject
//
//  Created by Mofocal on 14-4-1.
//  Copyright (c) 2014年 jiankun.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYButtonViewController : UIViewController

@property(nonatomic, strong) IBOutlet UIButton *button1;
@property(nonatomic, strong) IBOutlet UILabel *label;

-(IBAction)btn_click:(id)sender;
-(IBAction)back_click:(id)sender;
@end

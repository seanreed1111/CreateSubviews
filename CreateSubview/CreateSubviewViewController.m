//
//  CreateSubviewViewController.m
//  CreateSubview
//
//  Created by Sean Reed on 9/12/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "CreateSubviewViewController.h"

@interface CreateSubviewViewController ()

@end

@implementation CreateSubviewViewController

- (void)loadView
{
    //no need to do [super loadView] here, according to apple docs
    CGRect screenRect = [[UIScreen mainScreen]bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    self.view = [[BNRHypnosisView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

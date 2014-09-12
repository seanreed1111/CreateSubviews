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
    [super loadView];
    CGRect screenRect = [[UIScreen mainScreen]bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    BNRHypnosisView *myView = [[BNRHypnosisView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    self.view = myView;
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

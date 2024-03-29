//
//  CreateSubviewAppDelegate.h
//  CreateSubview
//
//  Created by Sean Reed on 9/12/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateSubviewViewController.h"
#import "ChessBoardViewController.h"
#import "ChessBoardView.h"

@interface CreateSubviewAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//@property (strong, nonatomic)CreateSubviewViewController *viewController;
@property (strong, nonatomic) ChessBoardViewController *chessBoardController;
@end

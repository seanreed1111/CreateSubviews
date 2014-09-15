//
//  ChessBoardView.h
//  CreateSubview
//
//  Created by Sean Reed on 9/15/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//
// based on CJGGridView by Conor Griffin

#import <UIKit/UIKit.h>

@interface ChessBoardView : UIView

@property (nonatomic) CGFloat squareSize;

- (instancetype)initWithSquareSize:(float)squareSize;

@end

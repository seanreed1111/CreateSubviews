//
//  ChessBoardView.m
//  CreateSubview
//
//  Created by Sean Reed on 9/15/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "ChessBoardView.h"

@implementation ChessBoardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All views should have a white background color
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


- (id)initWithSquareSize:(float)squareSize
{
    self = [super init];
    if (self)
    {
        self.squareSize = squareSize;
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    CGPoint boardOrigin;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    boardOrigin.y = self.squareSize *7;
    
    for (int row = 0; row <8 ; row++) {
        for (int column = 0; column <8; column++)
        {
            CGRect square = {
                boardOrigin.x + (column * self.squareSize),
                boardOrigin.y + (row * self.squareSize),
                self.squareSize,
                self.squareSize
            };
            
            // figure out whether the cell is light or dark blue
            
            if((row + column) %2 ==0)
            {
                CGContextSetRGBFillColor(context, 0.02, 0.28, 0.48, 1.0);
            }
            else
            {
                CGContextSetRGBFillColor(context, 0.34, 0.72, 1.0, 1.0);
            }
            
            CGContextFillRect(context, square);
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

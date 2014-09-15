//
//  ChessBoardView.m
//  CreateSubview
//
//  Created by Sean Reed on 9/15/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "ChessBoardView.h"

@implementation ChessBoardView



// designated initializer


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


//- (void)drawRect:(CGRect)rect
//{
//    // set default board size = 5x5
//    self.boardSize = 5;
//    // Initialization code
//    // is it better just to make this a collection view?
//    //let's try collectionview first.
//    
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

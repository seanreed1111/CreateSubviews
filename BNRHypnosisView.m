//
//  BNRHypnosisView.m
//  CreateSubview
//
//  Created by Sean Reed on 9/12/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All views should have a clear background color
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    //figure out the bounds of the rectangle that this view entails
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // find radius of the circle that will be the largest to fit the view
    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0 - 3.0;
    UIBezierPath *path = [[UIBezierPath alloc]init];
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    [path setLineWidth:2];
    [[UIColor grayColor]setStroke];
    [path stroke];
    
    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor greenColor]setStroke];
    [ovalPath stroke];
    
    
}


@end

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
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

//
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect
{
    // Draws a circle and an oval within the bounds of the view
//    CGRect bounds = self.bounds;
//    
//    //figure out the bounds of the rectangle that this view entails
//    CGPoint center;
//    center.x = bounds.origin.x + bounds.size.width / 2.0;
//    center.y = bounds.origin.y + bounds.size.height / 2.0;
//    
//    // find radius of the circle that will be the largest to fit the view
//    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0 - 3.0;
//    UIBezierPath *path = [[UIBezierPath alloc]init];
//    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
//    [path setLineWidth:2];
//    [[UIColor grayColor]setStroke];
//    [path stroke];
//    
    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor greenColor]setStroke];
    [ovalPath stroke];
    
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    //let the largest circle circumscribe the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
 
    // draw concentric circles
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    for (float currrentRadius = maxRadius; currrentRadius >0; currrentRadius -=20) {
        [path addArcWithCenter:center
                        radius:currrentRadius
                    startAngle:0.0 endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    path.lineWidth = 5;
    [[UIColor blueColor]setStroke];
    [path stroke];
    

    
//    // draw an arrow
//    UIBezierPath* p = [UIBezierPath bezierPath];
//    [p moveToPoint:CGPointMake(100,100)];
//    [p addLineToPoint:CGPointMake(100, 19)];
//    [p setLineWidth:20];
//    [p stroke];
//    // point of the arrow
//    [[UIColor redColor] set];
//    [p removeAllPoints];
//    [p moveToPoint:CGPointMake(80,25)];
//    [p addLineToPoint:CGPointMake(100, 0)];
//    [p addLineToPoint:CGPointMake(120, 25)];
//    [p fill];
//    // snip out triangle in the tail
//    [p removeAllPoints];
//    [p moveToPoint:CGPointMake(90,101)];
//    [p addLineToPoint:CGPointMake(100, 90)];
//    [p addLineToPoint:CGPointMake(110, 101)];
//    [p fillWithBlendMode:kCGBlendModeClear alpha:1.0];

}


@end

//
//  GBZPlanetView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 23/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZPlanetView.h"

@implementation GBZPlanetView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    
    CGRect frame = rect;
    // Drawing code
    //// Color Declarations
    UIColor* color17 = [UIColor colorWithRed: 0.53 green: 0.53 blue: 0.53 alpha: 1];
    UIColor* color18 = [UIColor colorWithRed: 0.326 green: 0.326 blue: 0.326 alpha: 1];
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
    [bezier3Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.85444 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14541 * CGRectGetHeight(frame))];
    [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.85444 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84814 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 1.04850 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.33946 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 1.04850 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65408 * CGRectGetHeight(frame))];
    [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15172 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84814 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66039 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.04219 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34577 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.04219 * CGRectGetHeight(frame))];
    [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15172 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14541 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + -0.04233 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65408 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + -0.04233 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.33946 * CGRectGetHeight(frame))];
    [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.85444 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14541 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34577 * CGRectGetWidth(frame), CGRectGetMinY(frame) + -0.04864 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.66039 * CGRectGetWidth(frame), CGRectGetMinY(frame) + -0.04864 * CGRectGetHeight(frame))];
    [bezier3Path closePath];
    bezier3Path.miterLimit = 4;
    
    [color17 setFill];
    [bezier3Path fill];
    
    
    //// Bezier 4 Drawing
    UIBezierPath* bezier4Path = UIBezierPath.bezierPath;
    [bezier4Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.11333 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80501 * CGRectGetHeight(frame))];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.37486 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87956 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.18944 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.85229 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.27900 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87956 * CGRectGetHeight(frame))];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.87528 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37336 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.65124 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87956 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.87528 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65293 * CGRectGetHeight(frame))];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.79052 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09140 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.87528 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.26898 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.84405 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17198 * CGRectGetHeight(frame))];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.99998 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49677 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.91728 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18144 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.99998 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32945 * CGRectGetHeight(frame))];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50308 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99368 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.99998 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77120 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.77751 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99368 * CGRectGetHeight(frame))];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.11331 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80501 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34509 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99368 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.20432 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.91994 * CGRectGetHeight(frame))];
    bezier4Path.miterLimit = 4;
    
    [color18 setFill];
    [bezier4Path fill];
}


@end

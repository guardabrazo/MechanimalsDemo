//
//  GBZMouthView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZMouthView.h"

@implementation GBZMouthView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        self.userInteractionEnabled = NO;
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGRect frame = rect;
    
    //// Color Declarations
    UIColor* color15 = [UIColor colorWithRed: 0.239 green: 0.239 blue: 0.239 alpha: 1];
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50534 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95160 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.03863 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18632 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.24800 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95160 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.03863 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60832 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.12400 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04632 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.03863 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10900 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.07685 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04632 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.20937 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18632 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.17115 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04632 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.20937 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10900 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50534 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67160 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.20937 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.45388 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34212 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67160 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.80127 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18632 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66851 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67160 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.80127 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.45392 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.88663 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04632 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.80127 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10900 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.83949 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04632 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.97200 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18632 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.93378 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04632 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.97200 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10900 * CGRectGetHeight(frame))];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50534 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95160 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.97200 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60832 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.76266 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95160 * CGRectGetHeight(frame))];
    [bezier2Path closePath];
    bezier2Path.miterLimit = 4;
    
    [color15 setFill];
    [bezier2Path fill];
}


@end

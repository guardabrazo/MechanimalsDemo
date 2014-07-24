//
//  GBZMouthView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZMouthView.h"
#import "GBZGearView.h"

@interface GBZMouthView ()

@end

@implementation GBZMouthView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
        [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];

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
    
    if (self.gearRotating) {
        //// Color Declarations
        
        //// Mouth open Drawing
        UIBezierPath* mouthOpenPath = UIBezierPath.bezierPath;
        [mouthOpenPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84902 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14962 * CGRectGetHeight(frame))];
        [mouthOpenPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84902 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84491 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 1.04102 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34162 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 1.04102 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65291 * CGRectGetHeight(frame))];
        [mouthOpenPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15373 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.84491 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.65702 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.03691 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34573 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.03691 * CGRectGetHeight(frame))];
        [mouthOpenPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15373 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14962 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + -0.03827 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65291 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + -0.03827 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34162 * CGRectGetHeight(frame))];
        [mouthOpenPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.84902 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14962 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34573 * CGRectGetWidth(frame), CGRectGetMinY(frame) + -0.04238 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.65702 * CGRectGetWidth(frame), CGRectGetMinY(frame) + -0.04238 * CGRectGetHeight(frame))];
        [mouthOpenPath closePath];
        mouthOpenPath.miterLimit = 4;
        
        [color15 setFill];
        [mouthOpenPath fill];

    }else{
       
        
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
}


@end

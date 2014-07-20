//
//  GBZGearView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZGearView.h"
#import "GBZOneFingerRotationGestureRecognizer.h"

@interface GBZGearView () <GBZOneFingerRotationGestureRecognizerDelegate>

@property (nonatomic, assign) CGFloat gearAngle;

@end

@implementation GBZGearView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setupGestureRecognizer];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    if ((self = [super initWithCoder:aDecoder])) {
        [self setupGestureRecognizer];
    }
    return self;
}

#pragma mark - OneFingerRotationGestureRecognizer protocol

- (void)rotation:(CGFloat)angle{
    
    // calculate rotation angle
    self.gearAngle += angle;
    
    if (self.gearAngle > 360){
        
        self.gearAngle -= 360;
        
    }else if (self.gearAngle < -360){
        
        self.gearAngle += 360;
    }
    
    self.transform = CGAffineTransformMakeRotation(self.gearAngle *  M_PI / 180);
    
    if (self.gearAngle > 45) {
        NSLog(@"PLAY AUDIO");
        [self.delegate didRotate];
        self.gearAngle = 0;
    }
}

- (void)finalAngle:(CGFloat)angle{
    
    [self rotateToClosestAngle];
    
}

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect{
    
    //// Color Declarations
    UIColor* color1 = [UIColor colorWithRed: 0.784 green: 0.593 blue: 0.313 alpha: 1];
    UIColor* color0 = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
    
    //// Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(245.44, 90.13)];
            [bezierPath addLineToPoint: CGPointMake(270.16, 60.2)];
            [bezierPath addLineToPoint: CGPointMake(270.18, 60.19)];
            [bezierPath addCurveToPoint: CGPointMake(256.07, 43.93) controlPoint1: CGPointMake(265.92, 54.52) controlPoint2: CGPointMake(261.22, 49.09)];
            [bezierPath addCurveToPoint: CGPointMake(238.07, 28.54) controlPoint1: CGPointMake(250.39, 38.25) controlPoint2: CGPointMake(244.36, 33.12)];
            [bezierPath addCurveToPoint: CGPointMake(207.91, 53.47) controlPoint1: CGPointMake(238.06, 28.53) controlPoint2: CGPointMake(207.91, 53.47)];
            [bezierPath addLineToPoint: CGPointMake(207.94, 53.46)];
            [bezierPath addCurveToPoint: CGPointMake(175.17, 40.25) controlPoint1: CGPointMake(197.92, 47.43) controlPoint2: CGPointMake(186.89, 42.93)];
            [bezierPath addLineToPoint: CGPointMake(175.15, 40.19)];
            [bezierPath addLineToPoint: CGPointMake(171.47, 1.53)];
            [bezierPath addLineToPoint: CGPointMake(171.47, 1.53)];
            [bezierPath addCurveToPoint: CGPointMake(150, 0) controlPoint1: CGPointMake(164.46, 0.52) controlPoint2: CGPointMake(157.29, 0)];
            [bezierPath addCurveToPoint: CGPointMake(126.39, 1.84) controlPoint1: CGPointMake(141.96, 0) controlPoint2: CGPointMake(134.08, 0.63)];
            [bezierPath addCurveToPoint: CGPointMake(122.7, 40.8) controlPoint1: CGPointMake(126.38, 1.84) controlPoint2: CGPointMake(122.7, 40.8)];
            [bezierPath addLineToPoint: CGPointMake(122.69, 40.76)];
            [bezierPath addCurveToPoint: CGPointMake(90.17, 54.62) controlPoint1: CGPointMake(111.02, 43.67) controlPoint2: CGPointMake(100.08, 48.4)];
            [bezierPath addLineToPoint: CGPointMake(90.13, 54.56)];
            [bezierPath addLineToPoint: CGPointMake(60.2, 29.83)];
            [bezierPath addLineToPoint: CGPointMake(60.19, 29.83)];
            [bezierPath addCurveToPoint: CGPointMake(43.93, 43.93) controlPoint1: CGPointMake(54.52, 34.08) controlPoint2: CGPointMake(49.09, 38.78)];
            [bezierPath addCurveToPoint: CGPointMake(28.54, 61.93) controlPoint1: CGPointMake(38.25, 49.62) controlPoint2: CGPointMake(33.12, 55.64)];
            [bezierPath addCurveToPoint: CGPointMake(53.47, 92.09) controlPoint1: CGPointMake(28.53, 61.94) controlPoint2: CGPointMake(53.47, 92.09)];
            [bezierPath addLineToPoint: CGPointMake(53.45, 92.07)];
            [bezierPath addCurveToPoint: CGPointMake(40.24, 124.86) controlPoint1: CGPointMake(47.43, 102.09) controlPoint2: CGPointMake(42.92, 113.12)];
            [bezierPath addLineToPoint: CGPointMake(40.19, 124.85)];
            [bezierPath addLineToPoint: CGPointMake(1.53, 128.53)];
            [bezierPath addLineToPoint: CGPointMake(1.52, 128.53)];
            [bezierPath addCurveToPoint: CGPointMake(0, 150) controlPoint1: CGPointMake(0.52, 135.54) controlPoint2: CGPointMake(0, 142.71)];
            [bezierPath addCurveToPoint: CGPointMake(1.84, 173.61) controlPoint1: CGPointMake(0, 158.04) controlPoint2: CGPointMake(0.63, 165.92)];
            [bezierPath addCurveToPoint: CGPointMake(40.8, 177.3) controlPoint1: CGPointMake(1.84, 173.62) controlPoint2: CGPointMake(40.8, 177.3)];
            [bezierPath addLineToPoint: CGPointMake(40.76, 177.29)];
            [bezierPath addCurveToPoint: CGPointMake(54.62, 209.83) controlPoint1: CGPointMake(43.66, 188.96) controlPoint2: CGPointMake(48.39, 199.92)];
            [bezierPath addLineToPoint: CGPointMake(54.56, 209.87)];
            [bezierPath addLineToPoint: CGPointMake(29.84, 239.8)];
            [bezierPath addLineToPoint: CGPointMake(29.83, 239.81)];
            [bezierPath addCurveToPoint: CGPointMake(43.93, 256.07) controlPoint1: CGPointMake(34.08, 245.48) controlPoint2: CGPointMake(38.78, 250.91)];
            [bezierPath addCurveToPoint: CGPointMake(61.93, 271.47) controlPoint1: CGPointMake(49.62, 261.75) controlPoint2: CGPointMake(55.64, 266.88)];
            [bezierPath addCurveToPoint: CGPointMake(92.09, 246.53) controlPoint1: CGPointMake(61.94, 271.47) controlPoint2: CGPointMake(92.09, 246.53)];
            [bezierPath addLineToPoint: CGPointMake(92.06, 246.54)];
            [bezierPath addCurveToPoint: CGPointMake(124.86, 259.76) controlPoint1: CGPointMake(102.08, 252.57) controlPoint2: CGPointMake(113.12, 257.08)];
            [bezierPath addLineToPoint: CGPointMake(124.85, 259.82)];
            [bezierPath addLineToPoint: CGPointMake(128.53, 298.47)];
            [bezierPath addLineToPoint: CGPointMake(128.53, 298.48)];
            [bezierPath addCurveToPoint: CGPointMake(150, 300) controlPoint1: CGPointMake(135.54, 299.48) controlPoint2: CGPointMake(142.71, 300)];
            [bezierPath addCurveToPoint: CGPointMake(173.61, 298.16) controlPoint1: CGPointMake(158.04, 300) controlPoint2: CGPointMake(165.92, 299.37)];
            [bezierPath addCurveToPoint: CGPointMake(177.3, 259.2) controlPoint1: CGPointMake(173.62, 298.16) controlPoint2: CGPointMake(177.3, 259.2)];
            [bezierPath addLineToPoint: CGPointMake(177.3, 259.24)];
            [bezierPath addCurveToPoint: CGPointMake(209.82, 245.38) controlPoint1: CGPointMake(188.97, 256.33) controlPoint2: CGPointMake(199.92, 251.61)];
            [bezierPath addLineToPoint: CGPointMake(209.87, 245.44)];
            [bezierPath addLineToPoint: CGPointMake(239.8, 270.16)];
            [bezierPath addLineToPoint: CGPointMake(239.81, 270.18)];
            [bezierPath addCurveToPoint: CGPointMake(256.07, 256.07) controlPoint1: CGPointMake(245.48, 265.92) controlPoint2: CGPointMake(250.91, 261.22)];
            [bezierPath addCurveToPoint: CGPointMake(271.47, 238.07) controlPoint1: CGPointMake(261.75, 250.39) controlPoint2: CGPointMake(266.88, 244.36)];
            [bezierPath addCurveToPoint: CGPointMake(246.53, 207.91) controlPoint1: CGPointMake(271.47, 238.06) controlPoint2: CGPointMake(246.53, 207.91)];
            [bezierPath addLineToPoint: CGPointMake(246.55, 207.93)];
            [bezierPath addCurveToPoint: CGPointMake(259.76, 175.15) controlPoint1: CGPointMake(252.57, 197.91) controlPoint2: CGPointMake(257.08, 186.88)];
            [bezierPath addLineToPoint: CGPointMake(259.82, 175.15)];
            [bezierPath addLineToPoint: CGPointMake(298.47, 171.48)];
            [bezierPath addLineToPoint: CGPointMake(298.48, 171.48)];
            [bezierPath addCurveToPoint: CGPointMake(300, 150) controlPoint1: CGPointMake(299.48, 164.46) controlPoint2: CGPointMake(300, 157.29)];
            [bezierPath addCurveToPoint: CGPointMake(298.16, 126.39) controlPoint1: CGPointMake(300, 141.96) controlPoint2: CGPointMake(299.37, 134.08)];
            [bezierPath addCurveToPoint: CGPointMake(259.2, 122.7) controlPoint1: CGPointMake(298.16, 126.38) controlPoint2: CGPointMake(259.2, 122.7)];
            [bezierPath addLineToPoint: CGPointMake(259.24, 122.68)];
            [bezierPath addCurveToPoint: CGPointMake(245.39, 90.19) controlPoint1: CGPointMake(256.33, 111.02) controlPoint2: CGPointMake(251.61, 100.09)];
            bezierPath.miterLimit = 4;
            
            [color0 setFill];
            [bezierPath fill];
        }
        
        
        //// Oval Drawing
        UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(95.29, 95.29, 109.42, 109.42)];
        [color1 setFill];
        [ovalPath fill];
    }

}


#pragma mark - Private methods

- (void)setupGestureRecognizer{
    
    CGPoint midPoint = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    
    CGFloat outerRadius = CGRectGetWidth(self.frame) * 0.7;
    
    GBZOneFingerRotationGestureRecognizer *rotationRecognizer = [[GBZOneFingerRotationGestureRecognizer alloc] initWithMidPoint: midPoint
                                                                                                                    innerRadius: outerRadius * 0.3
                                                                                                                    outerRadius: outerRadius
                                                                                                                         target: self];
    
    [self addGestureRecognizer: rotationRecognizer];
    
}

-(void)rotateToClosestAngle{
    
    CGFloat newAngle = (int)self.gearAngle % 45 * M_PI / 180;
    
    [UIView animateWithDuration:0.5
                          delay:0
         usingSpringWithDamping:0.4
          initialSpringVelocity:0.1
                        options:0
                     animations:^{
                         self.userInteractionEnabled = NO;
                         self.transform = CGAffineTransformRotate(self.transform, -newAngle);
                     } completion:^(BOOL finished) {
                         self.gearAngle = 0;
                         self.userInteractionEnabled = YES;
                     }];
}

@end

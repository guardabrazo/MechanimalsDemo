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

- (id)initWithFrame:(CGRect)frame{
    
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
    
    CGRect frame = rect;
    
    
    //// Subframes
    CGRect group = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame), floor((CGRectGetWidth(frame)) * 1.00000 + 0.5), floor((CGRectGetHeight(frame)) * 1.00000 + 0.5));
    
    
    //// Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.81812 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30045 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.90055 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20067 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.90058 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20064 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.85357 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.14644 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.88640 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.18174 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.87074 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.16362 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.79356 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.09512 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.83462 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.12749 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.81454 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11040 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69303 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17825 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.79355 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.09509 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.69303 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17825 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.69314 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.17820 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.58389 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.13416 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.65975 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.15811 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.62298 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.14309 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.58384 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.13395 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.57157 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00512 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.57157 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00508 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.54821 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00172 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.52430 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00000 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.42129 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00615 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.47321 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00000 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.44693 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00210 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.40899 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.13599 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.42127 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.00613 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.40899 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.13599 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.40897 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.13587 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30057 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.18207 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.37008 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.14555 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.33359 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.16132 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.30045 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.18188 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.20067 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.09945 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.20064 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.09942 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.14644 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.14644 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.18174 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.11359 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.16363 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.12927 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.09512 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20644 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.12749 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.16539 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.11040 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.18546 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.17825 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30697 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.09509 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.20646 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.17825 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30697 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.17817 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30691 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.13414 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.41620 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.15809 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.34030 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.14306 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37708 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.13395 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.41617 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.00511 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.42843 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.00508 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.42843 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.50000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.00173 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.45179 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.47569 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.00614 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.57871 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.52679 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.00210 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.55307 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.13599 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.59101 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.00613 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.57873 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.13599 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.59101 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.13585 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.59096 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.18206 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.69942 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.14554 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.62987 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.16130 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.66638 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.18188 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.69955 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.09945 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79933 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.09942 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79936 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.14644 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.85357 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.11360 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81826 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.12926 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.83638 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.20645 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.90489 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.16538 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87251 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.18546 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88961 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.30697 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.82176 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.20646 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.90492 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.30697 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.82176 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.30685 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.82180 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.41621 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86586 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.34027 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.84190 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.37707 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.85694 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.41617 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86605 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.42843 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99489 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.42843 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99493 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.50000 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.45180 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99828 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.47570 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.57872 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99385 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.52679 * CGRectGetWidth(group), CGRectGetMinY(group) + 1.00000 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.55307 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99790 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.59101 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86401 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.57873 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.99387 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.59101 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86401 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.59101 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86412 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69941 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81795 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.62989 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.85444 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.66639 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.83869 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.69956 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81812 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.79933 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.90055 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.79936 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.90058 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.85357 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.85356 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.81826 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.88640 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.83637 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.87073 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.90489 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79356 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.87251 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.83462 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.88961 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.81454 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.82176 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.69303 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.90492 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.79354 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.82176 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.69303 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.82182 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.69310 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.86585 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.58383 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.84189 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.65969 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.85692 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.62293 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.86606 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.58384 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.99489 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.57158 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.99493 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.57158 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 1.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.50000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.99828 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54822 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 1.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.52431 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.99385 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.42128 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 1.00000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.47321 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.99790 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.44693 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.86401 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40899 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.99387 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.42127 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.86401 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40899 * CGRectGetHeight(group))];
            [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.86412 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.40893 * CGRectGetHeight(group))];
            [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.81797 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.30064 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.85444 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.37008 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.83870 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.33363 * CGRectGetHeight(group))];
            bezierPath.miterLimit = 4;
            
            [color0 setFill];
            [bezierPath fill];
        }
        
        
        //// Oval Drawing
        UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(group) + floor(CGRectGetWidth(group) * 0.31764 + 0.21) + 0.29, CGRectGetMinY(group) + floor(CGRectGetHeight(group) * 0.31764 + 0.21) + 0.29, floor(CGRectGetWidth(group) * 0.68236 - 0.21) - floor(CGRectGetWidth(group) * 0.31764 + 0.21) + 0.42, floor(CGRectGetHeight(group) * 0.68236 - 0.21) - floor(CGRectGetHeight(group) * 0.31764 + 0.21) + 0.42)];
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

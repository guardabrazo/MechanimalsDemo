//
//  GBZEyesView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZEyesView.h"
#import <POP/POP.h>

@interface GBZEyesView ()

@property (nonatomic, assign) NSUInteger randomTime;

@property (strong, nonatomic) NSTimer *myTimer;

@end

@implementation GBZEyesView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
        [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        self.backgroundColor = [UIColor clearColor];
        self.userInteractionEnabled = NO;
        [self fireTimer];
            }
    return self;
}

-(NSUInteger)randomTime{
    
    if (!_randomTime){
        
        _randomTime = [self getRandomTime];
    }
    return _randomTime;
}

-(NSUInteger)getRandomTime{
    
    return arc4random_uniform(4) + 1;
}

-(void)fireTimer{
    
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:self.randomTime
                                                    target:self
                                                  selector:@selector(blink)
                                                  userInfo:nil
                                                   repeats:NO];
}

- (void)drawRect:(CGRect)rect{
    
    CGRect frame = rect;
    //// Color Declarations
    UIColor* color12 = [UIColor colorWithRed: 0.239 green: 0.239 blue: 0.239 alpha: 1];
    
    //// Eye2 Drawing
    UIBezierPath* eye2Path = UIBezierPath.bezierPath;
    [eye2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.81327 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49995 * CGRectGetHeight(frame))];
    [eye2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.90495 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.81327 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22376 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.85432 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
    [eye2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.99660 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49995 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.95558 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.99660 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22378 * CGRectGetHeight(frame))];
    [eye2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.90495 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.99660 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77602 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.95558 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
    [eye2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.81327 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49995 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.85432 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.81327 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77601 * CGRectGetHeight(frame))];
    [eye2Path closePath];
    eye2Path.miterLimit = 4;
    
    [color12 setFill];
    [eye2Path fill];
    
    
    //// Eye1 Drawing
    UIBezierPath* eye1Path = UIBezierPath.bezierPath;
    [eye1Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49995 * CGRectGetHeight(frame))];
    [eye1Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.09166 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22376 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.04105 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
    [eye1Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.18333 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49995 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.14229 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.18333 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22376 * CGRectGetHeight(frame))];
    [eye1Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.09166 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.18333 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77604 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.14229 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
    [eye1Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.49995 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.04105 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.99998 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77604 * CGRectGetHeight(frame))];
    [eye1Path closePath];
    eye1Path.miterLimit = 4;
    
    [color12 setFill];
    [eye1Path fill];

}

- (void)blink{
   
    [UIView animateWithDuration:0.1
                     animations:^{
                         self.transform = CGAffineTransformMakeScale(1, 0);
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:0.1
                                          animations:^{
                                              self.transform = CGAffineTransformMakeScale(1, 1);
                                          }];
                     }];
    
    [self.myTimer invalidate];
    self.myTimer = nil;
    
    self.randomTime = [self getRandomTime];
    [self fireTimer];
}


@end

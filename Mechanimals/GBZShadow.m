//
//  GBZShadow.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 24/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZShadow.h"

@implementation GBZShadow

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
        [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        self.backgroundColor = [UIColor clearColor];
        self.userInteractionEnabled = NO;
        [self animateShadow];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect{
    
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.2];
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 400, 30)];
    [color setFill];
    [ovalPath fill];
}

- (void)animateShadow{
    
    [UIView animateWithDuration:1
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionAllowAnimatedContent | UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         self.transform = CGAffineTransformMakeScale(1.2, 1);
                         self.alpha = 0.8;
                     } completion:^(BOOL finished) {
                         nil;
                     }];
}

@end

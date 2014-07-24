//
//  GBZMechanimalView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZMechanimalView.h"
#import "GBZMutableBodyView.h"

@interface GBZMechanimalView () <GearViewDelegate>

@property (assign) BOOL gearRotating;

@end

@implementation GBZMechanimalView

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
        [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
        
        self.backgroundColor = [UIColor clearColor];
        
        [self assembleMechanimal];

        [self animateMechanimal];
    }
    return self;
}



- (void) assembleMechanimal{
    
    GBZMutableBodyView *body = [[GBZMutableBodyView alloc]initWithFrame:CGRectMake(0, 0, 400, 400)];
    self.gearView = [[GBZGearView alloc]initWithFrame:CGRectMake(180, -50, 285, 285)];

    self.eyes = [[GBZEyesView alloc]initWithFrame:CGRectMake(50, 260, 300, 55)];
    
  
        self.mouth = [[GBZMouthView alloc]initWithFrame:CGRectMake(175, 345, 60, 35)];

    
    
    [self addSubview:body];
    [self addSubview:self.gearView];
    [self addSubview:self.eyes];
    [self addSubview:self.mouth];
}

- (void)animateMechanimal{
    
    [UIView animateWithDuration:1
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionAllowAnimatedContent | UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         self.transform = CGAffineTransformMakeTranslation(0, -20);
                     } completion:^(BOOL finished) {
                         nil;
                     }];
}

@end

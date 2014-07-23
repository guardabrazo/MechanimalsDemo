//
//  GBZMechanimalView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZMechanimalView.h"
#import "GBZMutableBodyView.h"
#import "GBZGearView.h"
#import "GBZEyesView.h"
#import "GBZMouthView.h"

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
    GBZGearView *gear = [[GBZGearView alloc]initWithFrame:CGRectMake(180, -50, 285, 285)];
    GBZEyesView *eyes = [[GBZEyesView alloc]initWithFrame:CGRectMake(50, 260, 300, 55)];
    GBZMouthView *mouth = [[GBZMouthView alloc]initWithFrame:CGRectMake(175, 345, 60, 35)];
    
    [self addSubview:body];
    [self addSubview:gear];
    [self addSubview:eyes];
    [self addSubview:mouth];
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

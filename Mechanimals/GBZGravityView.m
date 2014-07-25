//
//  GBZGravityView.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZGravityView.h"
#import "GBZGearView.h"

@interface GBZGravityView ()

@property (strong, nonatomic) UIView *viewWithGravity;
@property (strong, nonatomic) UIDynamicAnimator *animator;
@property (strong, nonatomic) UIView *referenceView;
@property (assign, nonatomic) CGVector gravityVector;
@property (strong, nonatomic) UICollisionBehavior *collisionBehavior;

@end

@implementation GBZGravityView

- (id)initWithFrame:(CGRect)frame view:(UIView *)view reversed:(BOOL)reversed{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        _viewWithGravity = view;
        
        if (reversed) {
            _referenceView = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height + view.bounds.size.height)];
            _gravityVector = CGVectorMake(0, -1);
        }else{
            _referenceView = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.origin.y - view.bounds.size.height, self.bounds.size.width, self.bounds.size.height + view.bounds.size.height)];
            _gravityVector = CGVectorMake(0, 1);
        }
        
        [self addSubview:self.referenceView];
        [self.referenceView addSubview: self.viewWithGravity];
        [self setupDynamics];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame view:(UIView *)view{
    
    return [self initWithFrame:frame view:view reversed:NO];
}

- (void)setupDynamics{

    [self setupAnimator];
    
    [self setupGravityBehavior];
    
    [self setupCollisionBehavior];
    
    [self setupItemBehavior];
}

- (void)setupAnimator {
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.referenceView];
}

- (void)setupGravityBehavior {
    
    self.gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.viewWithGravity]];
    self.gravityBehavior.gravityDirection = self.gravityVector;

    self.gravityBehavior.magnitude = 5.0;

    [self.animator addBehavior:self.gravityBehavior];
}

- (void)setupCollisionBehavior {
    
    self.collisionBehavior = [[UICollisionBehavior alloc]
                              initWithItems:@[self.viewWithGravity]];
    
    self.collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:self.collisionBehavior];
}

- (void)setupItemBehavior {
    
    UIDynamicItemBehavior *itemBehaviour = [[UIDynamicItemBehavior alloc] initWithItems:@[self.viewWithGravity]];
    
    itemBehaviour.density = 0;
    itemBehaviour.elasticity = 0.4;
    
    [self.animator addBehavior:itemBehaviour];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

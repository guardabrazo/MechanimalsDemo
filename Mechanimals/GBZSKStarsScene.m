//
//  GBZSKStarsScene.m
//  SpriteKitViewTest
//
//  Created by Federico Guardabrazo Vallejo on 20/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZSKStarsScene.h"

@implementation GBZSKStarsScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */

        NSString *starsParticleFile = [[NSBundle mainBundle]pathForResource:@"StarsParticles" ofType:@"sks"];
        
        SKEmitterNode *starsEmitter = [NSKeyedUnarchiver unarchiveObjectWithFile:starsParticleFile];

        starsEmitter.position = CGPointMake(0, 400);

        [self addChild:starsEmitter];
   
    }
    return self;
}

@end

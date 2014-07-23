//
//  GBZGearView.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GearViewDelegate <NSObject>

-(void)didRotate;

@end

@interface GBZGearView : UIView

@property (nonatomic, weak) id<GearViewDelegate> delegate;

@property (weak, nonatomic) id<UICollisionBehaviorDelegate> collisionDelegate;

@end

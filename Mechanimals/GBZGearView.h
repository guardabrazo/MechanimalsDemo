//
//  GBZGearView.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GearViewDelegate <NSObject>

@optional
- (void)didRotate;
- (void)isRotating;
- (void)finishedRotating;

@end

@interface GBZGearView : UIView

@property (nonatomic, weak) id<GearViewDelegate> delegate;

@end

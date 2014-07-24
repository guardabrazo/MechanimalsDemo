//
//  GBZMechanimalView.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBZGearView.h"
#import "GBZMouthView.h"
#import "GBZEyesView.h"

@interface GBZMechanimalView : UIView

@property (strong, nonatomic) GBZGearView *gearView;
@property (strong, nonatomic) GBZMouthView *mouth;
@property (strong, nonatomic) GBZEyesView *eyes;

@end

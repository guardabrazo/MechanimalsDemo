//
//  GBZGravityView.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBZGravityView : UIView

@property (strong, nonatomic) UIGravityBehavior *gravityBehavior;

- (id)initWithFrame:(CGRect)frame view:(UIView *)view reversed:(BOOL)reversed;

- (id)initWithFrame:(CGRect)frame view:(UIView *)view;



@end

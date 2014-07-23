//
//  GBZAppDelegate.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 18/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PdAudioController.h"

@interface GBZAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic, readonly) PdAudioController *audioController;

@end

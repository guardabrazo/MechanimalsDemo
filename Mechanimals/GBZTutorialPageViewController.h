//
//  GBZTutorialPageViewController.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 21/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBZFireBaseManager.h"

@interface GBZTutorialPageViewController : UIPageViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property GBZFireBaseManager *fireBaseManager;

@end

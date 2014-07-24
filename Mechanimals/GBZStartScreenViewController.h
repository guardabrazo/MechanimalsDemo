//
//  GBZStartScreenViewController.h
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PdDispatcher.h"
#import "GBZFireBaseManager.h"

@interface GBZStartScreenViewController : UIViewController{

    
PdDispatcher *dispatcher;
void *patch;
    
}

@property GBZFireBaseManager *fireBaseManager;

@end

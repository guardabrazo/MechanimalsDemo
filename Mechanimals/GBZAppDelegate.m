//
//  GBZAppDelegate.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 18/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZAppDelegate.h"
#import "GBZFireBaseManager.h"
#import "GBZStartScreenViewController.h"

@interface GBZAppDelegate ()

@property (strong, nonatomic) GBZFireBaseManager *fireBaseManager;

@end

@implementation GBZAppDelegate

- (GBZFireBaseManager*)fireBaseManager{
    
    if (!_fireBaseManager) {
        _fireBaseManager = [[GBZFireBaseManager alloc]initWithFireBaseRefAndPlayerID];
    }
    return _fireBaseManager;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    _audioController = [[PdAudioController alloc]init];
    
    if([self.audioController configureAmbientWithSampleRate:44100 numberChannels:2 mixingEnabled:YES] != PdAudioOK){
        NSLog(@"Failed to initialize audio components");
    }
    
    [self.fireBaseManager addPlayer];
    [self.fireBaseManager startMonitoringChanges];
    [self.fireBaseManager handleConnectionStatus];
    
    GBZStartScreenViewController *startVC = [[GBZStartScreenViewController alloc]init];
    startVC.fireBaseManager = self.fireBaseManager;
    
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:startVC];
    navigationController.navigationBarHidden = YES;
    self.window.rootViewController = navigationController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application{
   
    self.audioController.active = NO;
    
    [self.fireBaseManager removePlayer];
}

- (void)applicationDidEnterBackground:(UIApplication *)application{
    
    [self.fireBaseManager removePlayer];
}

- (void)applicationWillEnterForeground:(UIApplication *)application{
    
    if (self.fireBaseManager.isConnected) {
        [self.fireBaseManager addPlayer];
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    
    self.audioController.active = YES;
    
    if (self.fireBaseManager.isConnected) {
        [self.fireBaseManager addPlayer];
    }
}

- (void)applicationWillTerminate:(UIApplication *)application{

    [self.fireBaseManager removePlayer];
}

@end

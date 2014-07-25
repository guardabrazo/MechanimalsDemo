//
//  GBZStartScreenViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#define GEAR_RADIUS 150

#import "GBZStartScreenViewController.h"
#import "GBZAboutViewController.h"
#import "GBZTutorialPageViewController.h"
#import "GBZGearView.h"
#import "GBZGravityView.h"
#import "GBZGameViewController.h"
#import "GBZAudioManager.h"

@interface GBZStartScreenViewController () <GearViewDelegate>

@property (strong, nonatomic) GBZGearView *gearView;

@end

@implementation GBZStartScreenViewController

-(GBZGearView *)gearView{
    
    if (!_gearView) {
        
        _gearView = [[GBZGearView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame) - GEAR_RADIUS, CGRectGetMidY(self.view.frame) - GEAR_RADIUS * 2, GEAR_RADIUS * 2, GEAR_RADIUS*2)];
    }
    return _gearView;
}

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [GBZAudioManager sharedAudioManager];
    
    self.gearView.delegate = self;
    
    [self performSelector:@selector(showGearViewWithGravity) withObject:self afterDelay:0.5];
}



#pragma mark - GearView Protocol

-(void)didRotate{
    [PdBase sendBangToReceiver:@"bang"];
    static int count = 0;
    count++;
    if (count == 8) {
        
        [self showTitleLabelWithGravity];
        [self showMenuItems];
    }
}

#pragma mark - Private Methods

- (void)showGearViewWithGravity
{
    GBZGravityView *gravityView = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, CGRectGetMidY(self.view.bounds) + GEAR_RADIUS) view:self.gearView];
    [self.view addSubview:gravityView];
}

- (void)showTitleLabelWithGravity {
    
    UILabel *titleLabel = [self setupTitleLabel];
    
    GBZGravityView *titleGravityView = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 150) view:titleLabel];
    [self.view addSubview:titleGravityView];
    
}

- (UILabel *)setupTitleLabel {
    UILabel *titleLabel =  [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:100];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
    titleLabel.text = @"MECHANIMALS";
    return titleLabel;
}

- (void)showMenuItems{
    
    UIButton *playButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width *0.75, 200, 200, 100)];
    [playButton addTarget:self action:@selector(playButton) forControlEvents:UIControlEventTouchUpInside];
    [playButton setTitle:@"PLAY" forState:UIControlStateNormal];
    playButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    playButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [playButton setTitleColor:[UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1] forState:UIControlStateNormal];
    [playButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    UIButton *aboutButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width *0.075, 200, 200, 100)];
    [aboutButton addTarget:self action:@selector(aboutButton) forControlEvents:UIControlEventTouchUpInside];
    
    [aboutButton setTitle:@"ABOUT" forState:UIControlStateNormal];
    aboutButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    aboutButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [aboutButton setTitleColor:[UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1] forState:UIControlStateNormal];
    [aboutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];

    GBZGravityView *playButtonGravityView = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-150, self.view.bounds.size.width,self.view.bounds.size.height*0.5+playButton.frame.size.height) view:playButton reversed:YES];
    [self.view addSubview:playButtonGravityView];
    
    GBZGravityView *aboutButtonGravityView = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-150, self.view.bounds.size.width/2,self.view.bounds.size.height*0.5+aboutButton.frame.size.height) view:aboutButton reversed:YES];
    [self.view addSubview:aboutButtonGravityView];
    
}

#pragma mark - Navigation

- (void)aboutButton{
    
    GBZAboutViewController *aboutVC = [[GBZAboutViewController alloc]init];
    [self presentViewController:aboutVC animated:YES completion:nil];
}

- (void)playButton{

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([userDefaults boolForKey:@"tutorialSeen"]) {
        GBZGameViewController *gameVC = [[GBZGameViewController alloc]init];
        gameVC.fireBaseManager = self.fireBaseManager;
        [self.navigationController pushViewController:gameVC animated:YES];
    }else{
        GBZTutorialPageViewController *tutorialVC = [[GBZTutorialPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
        tutorialVC.fireBaseManager = self.fireBaseManager;
        [self presentViewController:tutorialVC animated:YES completion:nil];
    }
}


@end

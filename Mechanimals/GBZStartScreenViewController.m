//
//  GBZStartScreenViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 19/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#define GEAR_RADIUS 150

#import "GBZStartScreenViewController.h"
#import "GBZGearView.h"
#import "GBZGravityView.h"

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
    
    self.gearView.delegate = self;
    
    [self performSelector:@selector(addGearViewWithGravity) withObject:self afterDelay:0.5];
//    [self addGearViewWithGravity];
}



#pragma mark - GearView Protocol

-(void)didRotate{
    
    static int count = 0;
    count++;
    if (count == 8) {
        
        [self setupTitleLabel];
        [self showMenuItems];
    }
}

#pragma mark - Private Methods

- (void)addGearViewWithGravity
{
    GBZGravityView *gravityView = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, CGRectGetMidY(self.view.bounds) + GEAR_RADIUS) view:self.gearView];
    [self.view addSubview:gravityView];
}

- (void)setupTitleLabel {
    UILabel *titleLabel =  [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 100)];
    titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:100];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
    titleLabel.text = @"MECHANIMALS";
    
    GBZGravityView *titleGravityView = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 150) view:titleLabel];
    [self.view addSubview:titleGravityView];
    
}

- (void)showMenuItems{
    
    UIButton *playButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width *0.75, 200, 200, 100)];
    [playButton setTitle:@"PLAY" forState:UIControlStateNormal];
    playButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    playButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    playButton.titleLabel.textColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];

    GBZGravityView *playButtonGravityView = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, CGRectGetMidY(self.view.bounds)-playButton.frame.size.height*0.5, self.view.bounds.size.width,self.view.bounds.size.height*0.5+playButton.frame.size.height) view:playButton reversed:YES];
    [self.view addSubview:playButtonGravityView];
    
}

@end

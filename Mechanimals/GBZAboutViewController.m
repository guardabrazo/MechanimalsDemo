//
//  GBZAboutViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 20/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZAboutViewController.h"

@interface GBZAboutViewController ()

@end

@implementation GBZAboutViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
    [self displayTitleLabel];
    [self displayCreditsLabel];
    [self displayButtons];
}

- (void)displayTitleLabel {
    UILabel *titleLabel =  [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:100];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    titleLabel.text = @"MECHANIMALS";
    [self.view addSubview:titleLabel];
}

- (void)displayCreditsLabel {
    UILabel *titleLabel =  [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-250, 325, self.view.bounds.size.width*0.5, 125)];
    titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    titleLabel.text = @"A GAME BY @GUARDABRAZO";
    titleLabel.numberOfLines = -1;
    
    UILabel *subtitleLabel =  [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-250, 370, self.view.bounds.size.width*0.5, 250)];
    subtitleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:25];
    subtitleLabel.textAlignment = NSTextAlignmentCenter;
    subtitleLabel.textColor = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    subtitleLabel.text = @"SPECIAL THANKS TO @THEIRONHACK AND @NSSTUDENT";
    subtitleLabel.numberOfLines = -1;
    
    
    [self.view addSubview:titleLabel];
    [self.view addSubview:subtitleLabel];
}

- (void)displayButtons{
    
    UIButton *resetButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width *0.75, 620, 200, 100)];
    [resetButton addTarget:self action:@selector(resetButton) forControlEvents:UIControlEventTouchUpInside];
    [resetButton setTitle:@"RESET" forState:UIControlStateNormal];
    resetButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    resetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [resetButton setTitleColor:[UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1]forState:UIControlStateNormal];
    [resetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    UIButton *backButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width *0.075, 620, 200, 100)];
    [backButton addTarget:self action:@selector(backButton) forControlEvents:UIControlEventTouchUpInside];
    
    [backButton setTitle:@"BACK" forState:UIControlStateNormal];
    backButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    backButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [backButton setTitleColor:[UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1] forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];

    [self.view addSubview:resetButton];
    [self.view addSubview:backButton];
}

- (void)backButton{

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)resetButton{
    NSLog(@"RESET");
}

@end

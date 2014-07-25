//
//  GBZTutorial3ViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 23/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZTutorial3ViewController.h"
#import "GBZMechanimalView.h"
#import "GBZShadow.h"
#import "GBZBubbleView.h"
#import "GBZGameViewController.h"

@interface GBZTutorial3ViewController ()

@property (strong, nonatomic) GBZMechanimalView *mechanimal;
@property (strong, nonatomic) GBZShadow *shadow;
@property (strong, nonatomic) GBZBubbleView *bubbleView;

@end

@implementation GBZTutorial3ViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    if (!self.mechanimal) {
        self.mechanimal = [[GBZMechanimalView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-75, 300-70, 400, 400)];
    }
    
    self.mechanimal.gearView.userInteractionEnabled = NO;
    self.mechanimal.eyes.gearRotating = YES;
    self.mechanimal.mouth.gearRotating = YES;
    self.mechanimal.mouth.frame =  CGRectMake(172, 305+70, 60, 60);
    
    
    [self.view addSubview:self.mechanimal];
    if (!self.shadow) {
        self.shadow = [[GBZShadow alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-75, 710, 400, 30)];
    }
    
    [self.view addSubview:self.shadow];
    
    if (!self.bubbleView) {
        self.bubbleView = [[GBZBubbleView alloc] initWithFrame:CGRectMake(40, 250, 260, 250)];

    }
    [self.view addSubview:self.bubbleView];
    
    [self animateGear];
    
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    UIButton *gameButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width+20, 650, 200, 100)];
    [gameButton addTarget:self action:@selector(goToGame) forControlEvents:UIControlEventTouchUpInside];
   
    [gameButton setTitle:@"PLAY" forState:UIControlStateNormal];
    gameButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    gameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [gameButton setTitleColor:[UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1] forState:UIControlStateNormal];
    [gameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    [self.view addSubview:gameButton];
    
    
    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(120, 40, 800, 100)];
    textLabel.text = @"HELP  THE  MOTHERSHIP  FIND  THEM  WRITING  MESSAGES  AND  TRANSLATING  THEM  WITH  THEIR  COMMUNICATION  GEAR";
    textLabel.font =[UIFont fontWithName:@"Arvo-Bold" size:25];
    textLabel.numberOfLines = 5;
    textLabel.textAlignment = NSTextAlignmentCenter;
    textLabel.textColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
    [self.view addSubview:textLabel];
    
    
    
}

- (void)animateGear{
    
    [UIView animateWithDuration:0.5
                          delay:0
         usingSpringWithDamping:0.4
          initialSpringVelocity:0.1
                        options:UIViewAnimationOptionRepeat
                     animations:^{
                         self.mechanimal.gearView.transform = CGAffineTransformRotate(self.mechanimal.gearView.transform, M_PI*0.25);
                     } completion:nil];

}

- (void)goToGame{
    
    GBZGameViewController *gameVC = [[GBZGameViewController alloc]init];
    gameVC.fireBaseManager = self.fireBaseManager;
    
    [(UINavigationController *)self.presentingViewController pushViewController:gameVC animated:NO];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:YES forKey:@"tutorialSeen"];

}
@end

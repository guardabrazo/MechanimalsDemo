//
//  GBZTestViewController.m
//  SpriteKitViewTest
//
//  Created by Federico Guardabrazo Vallejo on 20/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZTutorial1ViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "GBZSKStarsScene.h"
#import "GBZSpaceshipView.h"

@interface GBZTutorial1ViewController ()
@property (weak, nonatomic) IBOutlet SKView *spriteKitView;
@property (strong, nonatomic) GBZSpaceshipView *spaceshipView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (assign) BOOL isAnimating;

@end

@implementation GBZTutorial1ViewController


-(void)viewWillAppear:(BOOL)animated{
    
    if (!self.isAnimating) {
        self.isAnimating = YES;
        self.spaceshipView = [[GBZSpaceshipView alloc]initWithFrame:CGRectMake(1024, 80, 350, 600)];
        self.spaceshipView.transform = CGAffineTransformMakeRotation(-M_PI*0.5);
        self.spaceshipView.userInteractionEnabled = YES;
        [self.view insertSubview:self.spaceshipView belowSubview:self.textLabel];
        [UIView animateWithDuration:2
                         animations:^{
                             self.spaceshipView.transform = CGAffineTransformTranslate(self.spaceshipView.transform, 0, -675);
                             //                         self.spaceshipView.frame = CGRectMake(1024, 200, 350, 600);
                         }completion:^(BOOL finished) {
                             [self animateSpaceship];
                             [self performSelector:@selector(hideSpaceship) withObject:self afterDelay:4];
                         }];
        

    }
    
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   
    
    self.textLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:25];
        
    // Create and configure the scene.
    SKScene * scene = [GBZSKStarsScene sceneWithSize:self.spriteKitView.bounds.size];
    scene.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.15 alpha:1];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [self.spriteKitView presentScene:scene];
    
  

}


-(void)animateSpaceship{
    
    [UIView animateWithDuration:0.08 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         self.spaceshipView.transform = CGAffineTransformTranslate(self.spaceshipView.transform, 5, 0);
                     } completion:nil];
    
    
}

-(void)hideSpaceship{
    
    [UIView animateWithDuration:4 delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                          self.spaceshipView.transform = CGAffineTransformTranslate(self.spaceshipView.transform, -200, 800);
                        
                     } completion:^(BOOL finished) {
                         self.isAnimating = NO;
                     }];
     
}

@end

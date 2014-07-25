//
//  GBZResetViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 24/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZResetViewController.h"

@interface GBZResetViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resetLabel;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;
@property (weak, nonatomic) IBOutlet UIButton *resetTutorialButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation GBZResetViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [self setupResetLabel];
    [self setupDeleteButton];
    [self setupTutorialButton];
    [self setupCancelButton];
}

- (IBAction)dismiss:(id)sender {
    
    switch ([sender tag]) {
        case 0:
            [self resetMechanimals];
            [self resetTutorial];
            break;
        case 1:
            [self resetTutorial];
            break;
        default:
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)resetTutorial{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:NO forKey:@"tutorialSeen"];

}

- (void)resetMechanimals{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setInteger:0 forKey:@"mechanimalsRescued"];
}

- (void)setupResetLabel {
    self.resetLabel.numberOfLines = -1;
    self.resetLabel.text = @"THIS  WILL  DELETE  YOUR  RESCUED  MECHANIMALS";
    self.resetLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:40];
}

- (void)setupDeleteButton {
    self.deleteButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
}

- (void)setupTutorialButton {
    self.resetTutorialButton.titleLabel.numberOfLines = -1;
    self.resetTutorialButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.resetTutorialButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
}

- (void)setupCancelButton {
    self.cancelButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
}

@end

//
//  GBZTryAgainViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 25/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZTryAgainViewController.h"

@implementation GBZTryAgainViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    
    [self setupLabels];
    [self setupDismissButton];
}

#pragma mark - Private methods

- (void)setupLabels{
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-400, CGRectGetMidY(self.view.frame)-220, 800, 300)];
    if (self.numberOfPlayers == 2) {
        label1.text = @"THERE  IS  CURRENTLY";
    }else{
        label1.text = @"THERE  ARE  CURRENTLY";
    }
    label1.font = [UIFont fontWithName:@"Arvo-Bold" size:40];
  
    UILabel *playersLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-400, CGRectGetMidY(self.view.frame)-150, 800, 300)];
    playersLabel.text = [NSString stringWithFormat:@"%d", self.numberOfPlayers-1];
    playersLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:80];

    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-400, CGRectGetMidY(self.view.frame)-30, 800, 300)];
    if (self.numberOfPlayers == 2){
        label2.text = @"MECHANIMAL  TRYING  TO  BE  RESCUED  AND  THE  MOTHERSHIP  IS  TOO  BUSY";
    }else{
        label2.text = @"MECHANIMALS  TRYING  TO  BE  RESCUED  AND  THE  MOTHERSHIP  IS  TOO  BUSY";
    }
    label2.font = [UIFont fontWithName:@"Arvo-Bold" size:40];

    NSArray *labelsArray = @[label1, label2, playersLabel];
    for (UILabel* label in labelsArray) {
        label.numberOfLines = -1;
        label.textColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
        label.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:label1];
    [self.view addSubview:playersLabel];
    [self.view addSubview:label2];
}

- (void)setupDismissButton{
    
    UIButton *dismissButton = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-200, CGRectGetMidY(self.view.frame)+300, 400, 60)];
    
    [dismissButton addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [dismissButton setTitle:@"TRY AGAIN" forState:UIControlStateNormal];
    dismissButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    dismissButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [dismissButton setTitleColor:[UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1] forState:UIControlStateNormal];
    [dismissButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    [self.view addSubview:dismissButton];
}


#pragma mark - Navigation

- (void) dismiss{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end

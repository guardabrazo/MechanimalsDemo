//
//  GBZTutorial0ViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 21/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZTutorial0ViewController.h"
#import "GBZEyesView.h"
#import "GBZMouthView.h"


@interface GBZTutorial0ViewController ()

@end

@implementation GBZTutorial0ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor colorWithRed: 0.815 green: 0.586 blue: 0.979 alpha: 1];
    
    [self drawFace];
    [self drawLabel];
}

- (void)drawFace{
    
    GBZEyesView *eyes = [[GBZEyesView alloc]initWithFrame:CGRectMake(50, 350, 924, 175)];
    
    [self.view addSubview:eyes];
    
    GBZMouthView *mouth = [[GBZMouthView alloc]initWithFrame:CGRectMake(437, 650, 150, 90)];
    [self.view addSubview:mouth];
}

- (void)drawLabel{
    
    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(40, 20, 944, 200)];
    textLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:40];
    textLabel.numberOfLines = -1;
    textLabel.textAlignment = NSTextAlignmentCenter;
    textLabel.textColor = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    textLabel.text = @"THE  MECHANIMALS  HAVE  BEEN  AMONG  US  FOR  A  LOOOONG  LONG  TIME. . .";
    [self.view addSubview:textLabel];
    
}

@end

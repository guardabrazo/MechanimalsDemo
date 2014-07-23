//
//  GBZTutorial2ViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 21/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#import "GBZTutorial2ViewController.h"
#import "GBZSpaceshipView.h"
#import "GBZPlanetView.h"
#import "GBZEyesView.h"

#import "GBZGameViewController.h"

@interface GBZTutorial2ViewController ()

@property (strong, nonatomic) GBZSpaceshipView *spaceship;
@property (assign) BOOL isAnimating;

@end

@implementation GBZTutorial2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    if (!self.isAnimating){
        [self animateSpaceship];
    }
  
    
}

-(void)animationDidStart:(CAAnimation *)anim{
    self.isAnimating = YES;
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    
    self.isAnimating = NO;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.15 alpha:1];
     GBZPlanetView *planet = [[GBZPlanetView alloc]initWithFrame:CGRectMake(350, CGRectGetMidY(self.view.frame)-300, 600, 600)];
    [self.view addSubview:planet];
    
    GBZEyesView *planetEyes = [[GBZEyesView alloc]initWithFrame:CGRectMake(420, CGRectGetMidY(self.view.frame)+150, 110, 20)];
    [self.view addSubview:planetEyes];
    
    
    self.spaceship = [[GBZSpaceshipView alloc]initWithFrame:CGRectMake(600, 20, 130, 200)];
    
    self.spaceship.transform = CGAffineTransformMakeRotation(M_PI*0.5);
    [self.view addSubview:self.spaceship];
    
    [self drawLabel];
    
//    [self animateSpaceship];
    
   
    
}

-(void)drawLabel{
    
    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 470, 400, 300)];
    textLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:25];
    textLabel.numberOfLines = -1;
    
    textLabel.textColor = [UIColor colorWithRed: 0.969 green: 0.911 blue: 0.729 alpha: 1];
    textLabel.text = @"AFTER  THOUSANDS  OF  YEARS  WAITING  FINALLY  A  RESCUE  MISSION  HAS  COME  IN  THEIR  SEARCH";
    [self.view addSubview:textLabel];
}

-(void)animateSpaceship{
    
    if (self.spaceship) {
        // Set up path movement
        CAKeyframeAnimation *pathAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
        pathAnimation.calculationMode = kCAAnimationPaced;
        pathAnimation.fillMode = kCAFillModeForwards;
        pathAnimation.removedOnCompletion = NO;
        pathAnimation.repeatCount = 0;
        pathAnimation.rotationMode = @"auto";
        pathAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
        pathAnimation.duration = 8;
        
        pathAnimation.delegate = self;
        
        pathAnimation.path = [[self drawBezierWithFrame:CGRectMake(350, CGRectGetMidY(self.view.frame)-300, 650, 650)]CGPath];
        
        CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        
        scaleAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
        scaleAnimation.fillMode=kCAFillModeForwards;
        scaleAnimation.removedOnCompletion=NO;
        scaleAnimation.toValue = @0;
        scaleAnimation.duration = 8;
        
        
        
        [self.spaceship.layer addAnimation:scaleAnimation forKey:@"myScaleAnimation"];
        
        [self.spaceship.layer addAnimation:pathAnimation forKey:@"myCircleAnimation"];
    }
    
    
}

-(UIBezierPath *)drawBezierWithFrame:(CGRect)frame{
    
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.99933 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.82134 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.14078 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.82134 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.76225 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.06540 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.37786 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.06540 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.14078 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11429 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + -0.04889 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.62610 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + -0.04889 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30954 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.69025 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11429 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.29251 * CGRectGetWidth(frame), CGRectGetMinY(frame) + -0.04190 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.53852 * CGRectGetWidth(frame), CGRectGetMinY(frame) + -0.04190 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.69025 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.56680 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.81164 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23925 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.81164 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.44185 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.33859 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.56680 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.59314 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66676 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.43570 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66676 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.33859 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27720 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.26090 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.48683 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.26090 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35717 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.56366 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27720 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.40073 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21323 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.50150 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21323 * CGRectGetHeight(frame))];

    return bezierPath;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

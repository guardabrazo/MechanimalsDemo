//
//  GBZGameViewController.m
//  Mechanimals
//
//  Created by Federico Guardabrazo Vallejo on 22/07/14.
//  Copyright (c) 2014 guardabrazo. All rights reserved.
//

#define MAXLENGHT 20

#import "GBZGameViewController.h"
#import "GBZMechanimalView.h"
#import "GBZShadow.h"
#import "GBZGravityView.h"
#import "GBZAudioManager.h"
#import "GBZTryAgainViewController.h"

@interface GBZGameViewController () <UITextFieldDelegate, GearViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIButton *menuButton;
@property (weak, nonatomic) IBOutlet UILabel *savedLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (strong, nonatomic) NSMutableAttributedString *string;

@property (strong, nonatomic) GBZMechanimalView *mechanimal;
@property (strong, nonatomic) GBZShadow *shadow;

@property (strong, nonatomic) GBZGravityView *skyViewWithGravity;
@property (strong, nonatomic) GBZGravityView *mountain1ViewWithGravity;
@property (strong, nonatomic) GBZGravityView *mountain2ViewWithGravity;

@end

@implementation GBZGameViewController

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    self.textField.alpha = 1;
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    [self showBackground];
    [self showMountains1];
    [self showMountains2];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupTextfield];
    [self setupMechanimal];
    [self setupShadow];
    [self setupMenuButton];
    
    self.savedLabel.font =[UIFont fontWithName:@"Arvo-Bold" size:50];
    self.savedLabel.textColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
    
    self.scoreLabel.font =[UIFont fontWithName:@"Arvo-Bold" size:70];
    self.scoreLabel.textColor = [UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSUInteger currentScore = [userDefaults integerForKey:@"mechanimalsRescued"];
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%d", currentScore];
    
}

#pragma mark - Background UIKitDynamics

- (void)showBackground
{
    
    UIView *skyView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 510)];
    skyView.backgroundColor = [UIColor colorWithRed: 0.615 green: 0.733 blue: 0.774 alpha: 1];
    self.skyViewWithGravity = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, skyView.frame.size.height) view:skyView];
    [self.view addSubview:self.skyViewWithGravity];
    [self.view sendSubviewToBack:self.skyViewWithGravity];
}

- (void)showMountains1
{
    UIImageView *mountains1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 365)];
    mountains1View.image = [UIImage imageNamed:@"mountains1"];
    mountains1View.contentMode = UIViewContentModeScaleAspectFill;
    
    self.mountain1ViewWithGravity = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, 145, self.view.bounds.size.width, mountains1View.frame.size.height)view:mountains1View];
    self.mountain1ViewWithGravity.gravityBehavior.magnitude = 4;
    [self.view insertSubview:self.mountain1ViewWithGravity aboveSubview:self.skyViewWithGravity];
}

- (void)showMountains2
{
    UIImageView *mountains2View = [[UIImageView alloc]initWithFrame:CGRectMake(0, -150, self.view.frame.size.width, 365)];
    mountains2View.image = [UIImage imageNamed:@"mountains2"];
    mountains2View.contentMode = UIViewContentModeScaleAspectFill;
    
    self.mountain2ViewWithGravity = [[GBZGravityView alloc]initWithFrame:CGRectMake(0, 145, self.view.bounds.size.width, mountains2View.frame.size.height)view:mountains2View];
    [self.view insertSubview:self.mountain2ViewWithGravity aboveSubview:self.mountain1ViewWithGravity];
}


#pragma mark - GearView Protocol

-(void)finishedRotating{
    self.mechanimal.mouth.gearRotating = NO;
    self.mechanimal.mouth.frame =  CGRectMake(175, 345+70, 60, 35);
    self.mechanimal.eyes.gearRotating = NO;

}

-(void)isRotating{
    self.mechanimal.mouth.gearRotating = YES;
    self.mechanimal.mouth.frame = CGRectMake(175, 320+70, 60, 60);
    self.mechanimal.eyes.gearRotating = YES;
}

-(void)didRotate{
    
    [PdBase sendBangToReceiver:@"bang"];
    static int count = 0;
    
    if (self.textField.text) {
        [self changeColor:count];
    }
    
    count++;
    
    if (count == self.string.length) {
        
        self.textField.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
        [self animateTextField];
        count = 0;
    }

}

#pragma mark - UI Methods

- (void)setupTextfield
{
    [self.view bringSubviewToFront:self.textField];
    self.textField.delegate = self;
    self.textField.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    self.textField.textColor = [UIColor darkGrayColor];
}

- (void)setupMechanimal
{
    self.mechanimal = [[GBZMechanimalView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-200, 240, 470, 460)];
    self.mechanimal.gearView.userInteractionEnabled = NO;
    self.mechanimal.gearView.delegate = self;
    
    [self.view addSubview:self.mechanimal];
}

- (void)setupShadow
{
    self.shadow = [[GBZShadow alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-200, 710, 400, 30)];
    [self.view addSubview:self.shadow];
}

- (void)setupMenuButton
{
    self.menuButton.titleLabel.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    [self.menuButton setTitleColor:[UIColor colorWithRed: 0.985 green: 0.761 blue: 0.37 alpha: 1] forState:UIControlStateNormal];
    [self.menuButton addTarget:self action:@selector(goToMenu) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - Private Methods

-(void)checkNumberOfPlayers{
    
    if (self.fireBaseManager.numberOfPlayers > 1) {
        [self showTryAgainWithNumberOfPlayers:self.fireBaseManager.numberOfPlayers];
    }else{
        [self showRescueAnimation];
    }
    
}

- (void)updateScore{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSUInteger currentScore = [userDefaults integerForKey:@"mechanimalsRescued"];
    NSUInteger newScore = currentScore+1;
    NSLog(@"%d", newScore);
    
    [userDefaults setInteger:newScore forKey:@"mechanimalsRescued"];
    
    [self updateScoreLabelWithScore:newScore];
}

#pragma mark - Animations


- (void)animateTextField{
    
    [UIView animateWithDuration:1
                     animations:^{
                         self.textField.alpha = 0;
                     }completion:^(BOOL finished) {
                         self.textField.text = @"";
                         [self checkNumberOfPlayers];
                     }];
}

- (void)showRescueAnimation{
    
    self.view.userInteractionEnabled = NO;
    UIView *abductionRay = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-280, 0, 560, self.view.frame.size.height)];
    abductionRay.backgroundColor = [UIColor colorWithRed: 0.642 green: 1 blue: 0.685 alpha: 1];
    abductionRay.alpha = 0;
    [self.view addSubview:abductionRay];
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         abductionRay.alpha = 0.5;
                     } completion:nil];
    
    
    
    [UIView animateWithDuration:8
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         self.mechanimal.frame = CGRectMake(self.mechanimal.frame.origin.x, -600, self.mechanimal.frame.size.width, self.mechanimal.frame.size.height);
                         
                         
                     } completion:^(BOOL finished) {
                         abductionRay.alpha = 0;
                         self.mechanimal.alpha = 0;
                         [self performSelector:@selector(resetMechanimal) withObject:self afterDelay:2];
                         [self updateScore];
                     }];
    
    [UIView animateWithDuration:2
                     animations:^{
                         self.shadow.alpha = 0;
                     }];
    
    
    
    
}

- (void)updateScoreLabelWithScore:(NSUInteger)score{
    
    [UIView animateWithDuration:0.5
                     animations:^{
                         self.scoreLabel.alpha = 0;
                     }completion:^(BOOL finished) {
                         self.scoreLabel.text = [NSString stringWithFormat:@"%d", score];
                         [UIView animateWithDuration:0.5
                                          animations:^{
                                              self.scoreLabel.alpha = 1;
                                          }];
                     }];
}

- (void)resetMechanimal{
    
    self.view.userInteractionEnabled = YES;
    
    self.mechanimal.frame = CGRectMake(CGRectGetMidX(self.view.frame)-200, 220, 470, 460);
    self.mechanimal.gearView.userInteractionEnabled = NO;
    
    [UIView animateWithDuration:1
                     animations:^{
                         self.mechanimal.alpha = 1;
                         self.shadow.alpha = 1;
                         
                         self.textField.alpha = 1;
                     }];
}



- (void)changeColor:(int)count {
    
    [UIView transitionWithView:self.textField
                      duration:0.25
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.string addAttribute:NSForegroundColorAttributeName value:[UIColor clearColor] range:NSMakeRange(count,1)];
                        [self.textField setAttributedText:self.string];
                    }
                    completion:nil];
}

#pragma mark - IBActions

-(IBAction)hideKeyboard:(id)sender{
    
    [self.textField resignFirstResponder];
}


#pragma mark - UITextField Protocol

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    [self.textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    
    if (self.textField.text) {
        self.mechanimal.gearView.userInteractionEnabled = YES;
    }
    
    self.string = [[NSMutableAttributedString alloc] initWithString:self.textField.text];
    
    [self.textField setAttributedText:self.string];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if (textField.text.length + (string.length - range.length)>0) {
        textField.font = [UIFont fontWithName:@"FuturamaAlienAlphabetOne" size:70];
    }else{
        textField.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    }
    
    NSUInteger oldLength = [textField.text length];
    NSUInteger replacementLength = [string length];
    NSUInteger rangeLength = range.length;
    
    NSUInteger newLength = oldLength - rangeLength + replacementLength;
    
    BOOL returnKey = [string rangeOfString: @"\n"].location != NSNotFound;
    
    return newLength <= MAXLENGHT || returnKey;
}

#pragma mark - Navigation

- (void)showTryAgainWithNumberOfPlayers:(int)numberOfPlayers{
    
    GBZTryAgainViewController *tryAgainVC = [[GBZTryAgainViewController alloc]init];
    tryAgainVC.numberOfPlayers = numberOfPlayers;
    [self presentViewController:tryAgainVC animated:YES completion:nil];
}

-(void)goToMenu{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end

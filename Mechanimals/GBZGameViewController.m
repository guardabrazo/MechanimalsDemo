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

@interface GBZGameViewController () <UITextFieldDelegate, GearViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) NSMutableAttributedString *string;

@property (strong, nonatomic) GBZMechanimalView *mechanimal;

@end

@implementation GBZGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.textField.delegate = self;
    
    self.textField.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    
    self.string = [[NSMutableAttributedString alloc] initWithString:@"firstsecondthird"];
    [self.string addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0,5)];
    [self.string addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(5,6)];
    [self.string addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(11,5)];
    
    [self.textField setAttributedText:self.string];

    
    
    
    self.mechanimal = [[GBZMechanimalView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-200, 300, 400, 400)];
    [self.view addSubview:self.mechanimal];
    self.mechanimal.gearView.delegate = self;
}

-(void)finishedRotating{
    NSLog(@"rotated");
    self.mechanimal.mouth.gearRotating = NO;
    self.mechanimal.mouth.frame =  CGRectMake(175, 345, 60, 35);
    self.mechanimal.eyes.gearRotating = NO;

}

-(void)isRotating{
    NSLog(@"rotating");
    self.mechanimal.mouth.gearRotating = YES;
    self.mechanimal.mouth.frame = CGRectMake(175, 320, 60, 60);
    self.mechanimal.eyes.gearRotating = YES;
}

- (IBAction)changeColor:(id)sender {
    NSLog(@"changing color");
    
    [UIView transitionWithView:self.textField
                      duration:0.25
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.string addAttribute:NSForegroundColorAttributeName value:[UIColor clearColor] range:NSMakeRange(11,5)];
                        [self.textField setAttributedText:self.string];
                    }
                    completion:nil];
}




-(IBAction)hideKeyboard:(id)sender{
    
    [self.textField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self.textField resignFirstResponder];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if (textField.text.length + (string.length - range.length)>0) {
        textField.font = [UIFont fontWithName:@"FuturamaAlienAlphabetOne" size:70];
    }else{
        textField.font = [UIFont fontWithName:@"Arvo-Bold" size:50];
    }
//    return YES;
    
    NSUInteger oldLength = [textField.text length];
    NSUInteger replacementLength = [string length];
    NSUInteger rangeLength = range.length;
    
    NSUInteger newLength = oldLength - rangeLength + replacementLength;
    
    BOOL returnKey = [string rangeOfString: @"\n"].location != NSNotFound;
    
    return newLength <= MAXLENGHT || returnKey;
}


@end
